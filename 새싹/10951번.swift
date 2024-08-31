var ans: [Int] = []

while true {
    // 입력받기 시도
    if let input = readLine() {
        // 입력된 값을 공백을 기준으로 나누고 정수로 변환
        let arr = input.split(separator: " ").compactMap { Int($0) }
        
        // 변환된 배열의 요소가 2개인지 확인 (예상되는 입력 형태: 두 개의 숫자)
        if arr.count == 2 {
            let A = arr[0]
            let B = arr[1]
            ans.append(A + B)
        } else {
            // 예외적인 경우 (입력된 숫자가 2개가 아닌 경우) 반복문 종료
            break
        }
    } else {
        // 입력이 nil인 경우 (예외적인 경우) 반복문 종료
        break
    }
}

// 결과 출력
for i in ans {
    print(i)
}
