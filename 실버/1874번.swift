
let num = Int(readLine()!)!
var inputArr: [Int] = []

for i in 1...num {
    let intN = Int(readLine()!)!
    inputArr.append(intN)
}

var stack: [Int] = []
var operations: [String] = []
var currentNumber = 1
var isPossible = true

for target in inputArr {
    while currentNumber <= target {
        stack.append(currentNumber)
        operations.append("+")
        currentNumber += 1
    }
    if stack.last == target {
        stack.removeLast()
        operations.append("-")
    } else {
        isPossible = false
        break
    }
}

if isPossible {
    for x in operations {
        print(x)
    }
} else {
    print("NO")
}
