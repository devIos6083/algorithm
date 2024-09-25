/*
정수 k 의 case
/ 0인 경우 최근에 쓴수 지우기
/ 마지막에 합 출력

4
3
0
4
0

10
1
3
5
4
0
0
7
0
0
6

->
0

7
*/

let numCase = Int(readLine()!)!
var resArr: [Int] = []

for _ in 1...numCase {
    let num = Int(readLine()!)!
    
    if num == 0 {
        resArr.removeLast()
    } else {
        resArr.append(num)
    }
    
    
}
var sum = 0
for x in resArr {
    sum += x
}

print(sum)
