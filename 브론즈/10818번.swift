// 입력
//5
//20 10 35 30 7

// 출력
//7 35


// 최솟갑 최댓값 춢력
var maxInt = 2147000000
var minInt = -2147000000
let n = Int(readLine()!)!
var arr: [Int] = readLine()!.split(separator: " ").map{(Int(String($0))!)}
//클로져 사용
arr.sort{($0 > $1)}
maxInt = arr[0]


arr.sort{($0 < $1)}
minInt = arr[0]

print("\(minInt) \(maxInt)")

