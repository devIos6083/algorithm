/*
시험 성적 최댓값을 M이라고 하면  / 모든 점수를 점수 / M * 100으로 변환
/ 새로운 평균 구하기

3
40 80 60
->
75.0
*/

let n = Int(readLine()!)!
var scoreArr: [Int] = readLine()!.split(separator: " ").map{(Int(String($0))!)}
var sum: Double = 0
scoreArr = scoreArr.sorted()
scoreArr = scoreArr.reversed()
let maxNum = scoreArr[0]
var resArr: [Double] = []
resArr = scoreArr.map {Double($0) / Double(maxNum) * 100}
for x in resArr {
    sum = sum + x
}
print(sum / Double(n))