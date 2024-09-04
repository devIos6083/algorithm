/*
150
266
427
->
3
1
0
2
0
0
0
2
0
0


ABC곱한겂을 0부터 9까지 몇번나왔는지 출력
1) 0 ~ 9까지 배열 만들기
 2) 곱한 숫자를 하나씩 분리하기
 3) 인덱스와 같은 수는 cnt += 1
 */


var cnt: [Int] = Array(repeating: 0, count: 10)

let A = Int(readLine()!)!
let B = Int(readLine()!)!
let C = Int(readLine()!)!
let multip = A * B * C

for i in String(multip) {
    let idx = Int(String(i))!
    cnt[idx] += 1
    
    
}

for i in cnt {
    print(i)
}
