/*
뒤집어도 동일한 숫자가 나오면 펠린드롬수
121
1231
12421
0
->
yes
no
yes
*/

var strArr: [String] = []
while true {
    let strA = readLine()!
    if strA == "0" {
        break
    }
    var arr: [String] = []
    for x in strA {
        arr.append(String(x))
    }
    if arr == arr.reversed() {
        strArr.append("yes")
    } else {
        strArr.append("no")
    }
    
}

for x in strArr {
    print(x)
}