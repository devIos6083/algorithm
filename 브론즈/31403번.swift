// 입력 받기
let A = Int(readLine()!)! // 첫 번째 정수 입력
let B = Int(readLine()!)! // 두 번째 정수 입력
let C = Int(readLine()!)! // 세 번째 정수 입력

// 첫 번째 출력: 정수 계산
print(A + B - C)

// 두 번째 출력: 문자열로 연결한 후, 정수로 변환하여 계산
let combinedString = String(A) + String(B) // "34"와 같은 형태
if let combinedInt = Int(combinedString) { // 연결된 문자열을 정수로 변환
    print(combinedInt - C) // "34" - 5 = 29
} else {
    print("변환 오류 발생")
}
