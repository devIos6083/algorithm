/*
* OX문제로 O가 쌓이면 점수가 올라가고
* X가 나오면 쌓인점수 초기화
5
OOXXOXXOOO
OOXXOOXXOO
OXOXOXOXOXOXOX
OOOOOOOOOO
OOOOXOOOOXOOOOX
->
10
9
7
55
30

*/

let n = Int(readLine()!)!
var resArr: [Int] = []
for i in 1...n {
    let str = readLine()!
    
    var cnt = 0
    var sum = 0
    
    for i in str {
        if i == "O" {
            cnt += 1
            sum += cnt
        } else {
            cnt = 0
        }
    }
    resArr.append(sum)
    
}
for i in resArr {
    print(i)
}
