/*
이항계수 5 * 4 / 2 = 10

5 2
->
10
*/

let arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let N = arr[0]
let K = arr[1]


if N == K || K == 0 {
    print(1)
} else {
    var mo = 1
    var ja = 1
    for i in 0..<K { // i는 0에서 K-1까지
        mo *= (N - i)    // 분자 계산
        ja *= (K - i)    // 분모 계산, 0이 되지 않음
    }
    print(mo / ja)
}
