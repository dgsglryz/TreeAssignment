import Foundation

func getParentNode(_ edges: [(Int, Int)], _ n: Int) -> [Int] {
  var parentNodeDict = [Int: Int]()
  
  for edge in edges {
    let (parent, child) = edge
    parentNodeDict[child] = parent
  }
  
  var result = [Int]()
  
  for node in 2...n {
    if let parent = parentNodeDict[node] {
      result.append(parent)
    } else {
      result.append(-1)
    }
  }
  
  return result
}




