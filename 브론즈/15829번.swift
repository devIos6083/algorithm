/*
소문자 a,b 에 1부터 숫자를 부여함
/ 숫자로 갯수 입력  + 문자열 입력
/ 해시 값으로 바꾸기

5
abcde

3
zzz

1
i
 
10
bacdewfeww

->
4739715

25818

9
*/
import Foundation

let n = Int(readLine()!)!
var i = 0
var sum =  0
let strA = readLine()!
let mod = 1234567891
var power = 1

for x in strA {
    let asciiV = Int(x.asciiValue!) - 96
    
    sum = (sum + asciiV * power) % mod
    power = (power * 31) % mod
}
print(sum)