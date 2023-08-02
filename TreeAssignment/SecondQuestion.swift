import Foundation

struct Edge {
  let vertex: Int
  let distance: Int
}

func dfs(_ node: Int, _ visited: inout [Bool], _ tree: inout [[Edge]], _ distance: Int) -> (Int, Int) {
  visited[node] = true
  var farthestNode = node
  var maxDistance = distance
  
  for edge in tree[node] {
    let nextNode = edge.vertex
    if !visited[nextNode] {
      let (farthest, dist) = dfs(nextNode, &visited, &tree, distance + edge.distance)
      if dist > maxDistance {
        maxDistance = dist
        farthestNode = farthest
      }
    }
  }
  
  return (farthestNode, maxDistance)
}

func findDiameter(_ tree: [[Edge]], _ n: Int) -> Int {
  var treeCopy = tree
  var visited = [Bool](repeating: false, count: n + 1)
  let (farthestNode1, _) = dfs(1, &visited, &treeCopy, 0)
  
  visited = [Bool](repeating: false, count: n + 1)
  let (_, diameter) = dfs(farthestNode1, &visited, &treeCopy, 0)
  
  return diameter
}
