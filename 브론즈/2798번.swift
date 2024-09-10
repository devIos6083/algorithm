/*
합이 21이 넘지 않는 선에서 합을 최대로
/ N장의 카드를 보이게 바닥에
/ 딜러는 M 숫자 외침
/ N장의 카드 중 3장의 카드를 골라서 M을 넘지 않게 최대로

5 21
5 6 7 8 9

10 500
93 181 245 214 315 36 185 138 216 295

->
21
497
*/

let feat = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let n = feat[0]
let lim = feat[1]

let arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
var sum = 0
var sumArr: [Int] = []
for a in 0...n-3 {
    for b in a+1...n-2 {
        for c in b+1...n-1 {
            sum = arr[a] + arr[b] + arr[c]
            if (sum <= lim) {
                sumArr.append(sum)
            }
        }
    }
}
sumArr = sumArr.sorted()
sumArr = sumArr.reversed()

print(sumArr[0])