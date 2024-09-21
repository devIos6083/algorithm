/*
키 와 몸무게로 등수 매기기
/ x kg y cm
/ 88 186
55 185
58 183
60 175
46 155/

5
55 185
58 183
88 186
60 175
46 155

->
2 2 1 2 5

*/
let count = Int(readLine()!)!
var keyArr: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: count)
var rank: [Int] = Array(repeating: 1, count: count)

for i in 0..<count {
    let numArr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
    let weight = numArr[0]
    let height = numArr[1]
    
    keyArr[i][0] = weight
    keyArr[i][1] = height
}

// 정렬할 필요 없이 -> 자기보다 큰사람이 있는지 없는지 체크 -> 양방향으로 체크해줘야함
for i in 0...count - 2 {
    for j in i+1...count - 1 {
        if (keyArr[i][0] < keyArr[j][0]) && (keyArr[i][1] < keyArr[j][1]) {
            rank[i] += 1
        }
        if (keyArr[i][0] > keyArr[j][0]) && (keyArr[i][1] > keyArr[j][1]) {
            rank[j] += 1
        }
    }
}

for x in rank {
    print(x,terminator: " ")
}
