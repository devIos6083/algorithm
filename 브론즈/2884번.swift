// H와 M 입력받기
let ala = readLine()!.split(separator: " ").map{(Int(String($0))!)}
var H = ala[0]
var M = ala[1]

//    경우의 수
//    1) M이 59...45 인 경우
//    2) M이 0...44 인 경우
//    2-1) H가 0 인 경우

if M >= 45 && M <= 59 {
    M = M - 45
} else if M >= 0 && M <= 44 {
    M = M + 60 - 45
    if (H != 0) {
        H -= 1
    } else {
        H = 23
    }
}

print("\(H) \(M)")
