while true {
    // 입력 받기
    let str = readLine()!
    
    // .만 입력받으면 종료
    if str == "." {
        break
    } else if str.last == "." {
        // 괄호 스택을 비워서 초기화
        var arr: [Character] = []
        var isBalanced = true  // 균형 여부 체크
        for char in str {
            if char == "(" {
                arr.append(char)
            } else if char == "[" {
                arr.append(char)
            } else if char == ")" {
                if arr.isEmpty || arr.last != "(" {
                    isBalanced = false
                    break
                } else {
                    arr.removeLast()
                }
            } else if char == "]" {
                if arr.isEmpty || arr.last != "[" {
                    isBalanced = false
                    break
                } else {
                    arr.removeLast()
                }
            }
        }
        
        // 균형 체크: 스택이 비어 있고 중간에 문제가 없었으면 "yes" 출력
        if isBalanced && arr.isEmpty {
            print("yes")
        } else {
            print("no")
        }
    } else {
        print("잘못된 입력입니다")
    }
}
