func isPrime(_ x: Int) -> Bool {
    var cnt: [Int] = []
    for i in 1...x {
        if (x % i == 0) {
            cnt.append(i)
        }
    }
    if cnt.count == 2 {
        return true
    } else {
        return false
    }
}


let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
var count = 0
for x in arr {
    if x == 1 {
        continue
    } else {
        if isPrime(x) {
            count += 1
        }
    }
}

print(count)