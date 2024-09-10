/*
13
58
 1
->
3
5
 1
*/

let n = Int(readLine()!)!
var cnt = 1
var i = 0

while cnt < n {
    cnt = cnt +  6 * i
    i += 1
}
if n == 1 {
    print(1)
} else {
    print(i)
}
