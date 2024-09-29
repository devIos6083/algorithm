
// push - 정수 X를 큐에 넣음
func push (_ x: Int) {
    stack.append(x)
}
// pop - 가장 앞에 있는 수 빼고 출력 / 업는 경우 -1 출력
func pop() {
    if !stack.isEmpty {
        let last =  stack.removeFirst()
        print(last)
    } else {
        print(-1)
    }
}
// size - 큐에 들어있는 정수 갯수
func size() {
    print(stack.count)
}
// empty - 큐가 비어있다면 1 아니면 0 출력
func empty() {
    if stack.isEmpty {
        print(1)
    } else {
        print(0)
    }
}
// front - 가장 앞에 있는 정수 출력 없는 경우 -1 출력
func front() {
    if stack.isEmpty {
        print(-1)
    } else {
        let first = stack.first
        print(first!)
    }
}
// back - 가장 뒤에 있는 정수 출력 없는 경우 -1 출력
func back() {
    if stack.isEmpty {
        print(-1)
    } else {
        let last = stack.last
        print(last!)
    }
}

var stack: [Int] = []
let countA = Int(readLine()!)!
for _ in 0...(countA - 1) {
    let orderS = readLine()!.split(separator: " ")
    let order = orderS[0]
    
    switch order {
    case "push":
        let pushNum = Int(orderS[1])!
        push(pushNum)
    case "pop":
        pop()
    case "size":
        size()
    case "empty":
        empty()
    case "front":
        front()
    case "back":
        back()
    default:
        break
    }
}
