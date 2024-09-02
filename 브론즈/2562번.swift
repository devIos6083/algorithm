var arr: [Int] = []
// 배열 다 입력받고
for _ in 1...9 {
    arr.append(Int(readLine()!)!)
}
var maxNum: Int = -2147000000
var maxIdx: Int = 0
// 출력
for (idx,val) in  arr.enumerated() {
    if val > maxNum {
        maxNum = val
        maxIdx = idx
    }
}
print(maxNum)
print(maxIdx + 1)
