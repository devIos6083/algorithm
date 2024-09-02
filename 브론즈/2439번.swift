
let n = Int(readLine()!)! // 정수 입력 받기

for x in 1...n {
    // 빈칸 출력
    for _ in 0..<(n - x) {
        print(" ", terminator: "")
    }
    // 별 출력
    for _ in 0..<x {
        print("*", terminator: "")
    }
    print() // 줄바꿈
}
