// push 구현
func push(_ x: Int!) {
    stack.append(x)
}
// pop 구현
func pop() {
    if stack.count != 0
    {
        let last = stack.removeLast()
        print(last)
    } else {
        print(-1)
    }
}
// size 구현
func size() {
    print(stack.count)
}
// top 구현
func top() {
    if  stack.count >= 1 {
        print(stack.last!)
    } else {
        print(-1)
    }
    
}
// empty 구현
func empty() {
    print(stack.isEmpty ? 1: 0)
}

let caseNum = Int(readLine()!)!
var stack: [Int] = []
// case별로 명령어 입력
for _ in 0...caseNum - 1 {
    let orderStr = readLine()!.split(separator: " ")
    
    let order = orderStr[0]
    
    switch order {
    case "push":
        push(Int(orderStr[1]))
    case "pop":
        pop()
    case "size":
        size()
    case "top":
        top()
    case "empty":
        empty()
    default:
        break
    }
}