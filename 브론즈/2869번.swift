/*
V인막대
/ 낮에 A미터 올라가고
/ 밤에 B만큼 미끄러짐
2 1 5
5 1 6
100 99 1000000000

->
4
2
999999901
*/
import Foundation
let arr = readLine()!.split(separator: " ").map{(Double(String($0))!)}
let A = arr[0]
let B = arr[1]
let V = arr[2]

var days: Int  = Int(ceil((V - A) / (A - B))) + 1
print(days)


