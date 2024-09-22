/*
2차원 평면 에서 x가 증가하는 순으로
/ x 좌표가 같다면 y좌표가 증가하는 순으로

5
3 4
1 1
1 -1
2 2
3 3

->
1 -1
1 1
2 2
3 3
3 4

*/

let count = Int(readLine()!)!
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: count)

for i in 0...count-1 {
    let numArr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
    let x = numArr[0]
    let y = numArr[1]
    graph[i][0] = x
    graph[i][1] = y
}

// 정렬하기
graph.sort {
    if $0[0] == $1[0] {
        return $0[1] < $1[1]
    } else {
        return $0[0] < $1[0]
    }
}

for i in 0...count-1 {
    print(graph[i][0],graph[i][1])
}
