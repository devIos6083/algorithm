/*
24 18
->
6
72
*/

var arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
arr = arr.sorted()
let a = arr[0]
let b = arr[1]
var resA: [Int] = []
var maxN = 0
for x in 1...a {
    if a % x == 0 {
        resA.append(x)
    }
}

resA = resA.sorted()
resA = resA.reversed()

for x in resA {
    if b % x == 0 {
        maxN = x
        break
    }
}

let retA = a / maxN
let retB = b / maxN

print(maxN)
print(maxN * retA * retB)