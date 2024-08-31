let n = Int(readLine()!)!
var ans: [Int] = []
for i in 1...n {
    let arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
    let A = arr[0]
    let B = arr[1]
    ans.append(A + B)
}
for i in ans {
    print(i)
}
