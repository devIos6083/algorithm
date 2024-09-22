/*
2차원 평면 에서 y가 증가하는 순으로
/ y좌표가 같다면 x좌표가 증가하는 순으로

5

5
0 4
1 2
1 -1
2 2
3 3

->
1 -1
1 2
2 2
3 3
0 4
*/

let count = Int(readLine()!)!
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: count)

// 숫자 삽입하기
for i in 0...count-1 {
    let numArr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
    let x = numArr[0]
    let y = numArr[1]
    graph[i][0] = x
    graph[i][1] = y
}

// 숫자 정렬하기
graph.sort {
    if $0[1] == $1[1] {
        return $0[0] < $1[0]
    } else {
        return $0[1] < $1[1]
    }
}

// 출력하기
for i in 0...count-1 {
    print(graph[i][0],graph[i][1])
}
