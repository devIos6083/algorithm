
/*

1. 10개 입력받고 (for 구문)
2. 42로 나누었을때 서로다른 나머지가 몇개인지 출력(contain 메서드 이용)

1
2
3
4
5
6
7
8
9
10
->
10

42
84
252
420
840
126
42
84
420
126
->
1

*/
var numArr: [Int] = []
var resultArr: [Int] = []
for _ in 1...10 {
    let num = Int(readLine()!)!
    numArr.append(num)
}

for x in numArr {
    let namu = x % 42
    
    if !resultArr.contains(namu) {
        resultArr.append(namu)
    }
}

print(resultArr.count)
