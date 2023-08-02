import Foundation

let edges1 = [(1, 6), (6, 3), (3, 5), (4, 1), (2, 4), (4, 7)]
let n1 = 7
let output1 = getParentNode(edges1, n1)
output1.forEach { print($0) }

let edges2 =  [(1, 2), (1, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8), (5, 9), (5, 10), (6, 11), (6, 12)]
let n2 = 12
let output2 = getParentNode(edges2, n2)
output2.forEach { print($0) }


let tree1: [[Edge]] = [
  [],
  [Edge(vertex: 3, distance: 2)],
  [Edge(vertex: 4, distance: 4)],
  [Edge(vertex: 1, distance: 2), Edge(vertex: 4, distance: 3)],
  [Edge(vertex: 2, distance: 4), Edge(vertex: 3, distance: 3), Edge(vertex: 5, distance: 6)],
  [Edge(vertex: 4, distance: 6)]
]
let s1 = 5
let result1 = findDiameter(tree1, s1)
print(result1)

let tree2: [[Edge]] = [
  [],
  [Edge(vertex: 3, distance: 2)],
  [Edge(vertex: 4, distance: 4), Edge(vertex: 6, distance: 2)],
  [Edge(vertex: 2, distance: 4), Edge(vertex: 4, distance: 3), Edge(vertex: 5, distance: 6)],
  [Edge(vertex: 3, distance: 3), Edge(vertex: 5, distance: 6)],
  [Edge(vertex: 4, distance: 6), Edge(vertex: 7, distance: 4)],
  [Edge(vertex: 6, distance: 4), Edge(vertex: 8, distance: 5)],
  [Edge(vertex: 7, distance: 5)],
  [Edge(vertex: 7, distance: 5)],
]
let s2 = 8
let result2 = findDiameter(tree2, s2)
print(result2)

