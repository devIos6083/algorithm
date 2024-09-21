/*
순서대로 오름차순 정렬하기

5
5
4
3
2
1

->
1
2
3
4
5


*/

let num = Int(readLine()!)!
var numArr: [Int] = []
for _ in 1...num {
    let num = Int(readLine()!)!
    numArr.append(num)
}

let sortedNum = numArr.sorted{
    $0 < $1
}
for x in sortedNum {
    print(x)
}