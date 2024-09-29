let caseNum = Int(readLine()!)!
// case 대로 돌리기
for _ in 1...caseNum {
    var resArr: [Character] = []
    var isCor: Bool = true
    let str = readLine()!
    for char in str {
        // 여는 괄호인 경우 배열에 추가하기
        if char == "(" {
            resArr.append(char)
        }  else if char == ")" {
            // 닫는 경우와 배열에 존재하면 pop
            if !resArr.isEmpty {
                resArr.removeLast()
            } else {
                isCor = false
            }
        }
    }
    // 결과적으로 참이고 비었다면 YES / No 출력
    if isCor && resArr.isEmpty {
        print("YES")
    } else {
        print("NO")
    }
}
