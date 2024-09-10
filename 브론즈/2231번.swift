/*
분해합이란 그 수 + 한자리씩 나눈 수
 / 입력을 하면 그 전의 분해합 구하기
/ 생성자가 없는 경우 0


216
->
198
*/

func initA (_ x: Int) -> Int {
    var sum: Int = 0
    for num in String(x) {
        sum  = sum + Int(String(num))!
    }
    var res = sum + x
    return res
}

var numA = Int(readLine()!)!
var resArr: [Int] = []
for i in 1...numA {
    if initA(i) == numA {
        resArr.append(i)
    }
}

if resArr.isEmpty {
    print(0)
} else {
    print(resArr[0])
}