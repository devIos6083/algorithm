
/*
23
3 1 4 1 5 9
5 7
->
7
3 2

1. N 입력 받기 / 사이즈별 입력 / 티 묶음 펜 묶음 입력
2. 사이즈 한개씩 돌면서 T로 나누기
*/

let N = Int(readLine()!)!
let size: [Int] = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let TP: [Int] = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let T = TP[0]
let Pen = TP[1]
var cntT = 0
for x in size {
    if  x % T == 0 {
        cntT = cntT + x / T
    } else {
        cntT = cntT + (x / T + 1)
    }
}
let penS = N / Pen
let penN = N % Pen
print(cntT)
print(penS,penN)