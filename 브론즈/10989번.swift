let num = Int(readLine()!)!
var counts = [Int](repeating: 0, count: 1000001)

for _ in 1...num {
    let value = Int(readLine()!)!
    counts[value] += 1
}

var result = ""
for (idx, count) in counts.enumerated() {
    if count > 0 {
        result += String(repeating: "\(idx)\n", count: count) // count 만큼 idx를 반복 추가
    }
}

print(result)
