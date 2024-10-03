let inputArr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let M = inputArr[0]
let N = inputArr[1]
var repeatArr = Array(repeating: 0, count: N + 1)
// 우선 배열에 숫자 넣기
for  i in 2...N {
    repeatArr[i] = i
}

// 만약 0이면 계속하기
for i in 2...N {
    if repeatArr[i] == 0 {
        continue
    }
    for j in stride(from: i + i, through: N, by: i) {
        repeatArr[j] = 0
    }
}

for i in M...repeatArr.count-1 {
    if repeatArr[i] != 0 {
        print(repeatArr[i])
    }
}
