/*
The Curious Case of Benjamin Button
-> 6
 The first character is a blank
-> 6
The last character is a blank
-> 6

글자수 세기
*/

let n = readLine()!
var count: Int = 1

if n[n.startIndex] == " " {
    count -= 1
}

if n.last == " " {
    count -= 1
}
for i in n {
    if i == " " {
        count += 1
    }
}
print(count)