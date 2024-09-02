// 입력 받기
let n = Int(readLine()!)!
let arr = readLine()!.map{(Int(String($0))!)}
var sum = 0
// 총합 더하기
for i in 0...n - 1 {
    sum = sum + arr[arr.index(arr.startIndex, offsetBy: i)]
}
// 출력
print(sum)
