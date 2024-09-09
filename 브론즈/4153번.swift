/*
직각 삼각형 판별
6 8 10
25 52 60
5 12 13
0 0 0
->
right
wrong
right
*/
import Foundation
var sortedTri: [Int] = []
var resultArr: [String] = []
while true {
    let tri = readLine()!.split(separator: " ").map{(Int(String($0))!)}
    sortedTri = tri
    sortedTri = sortedTri.sorted()
    sortedTri = sortedTri.reversed()
    let a = sortedTri[0]
    let b = sortedTri[1]
    let c = sortedTri[2]

    if (a == 0 && (b == 0 && c == 0)) {
        break
    } else if (a * a == b * b + c * c) {
        resultArr.append("right")
    } else {
        resultArr.append("wrong")
    }

}

for x in resultArr {
    print(x)
}
