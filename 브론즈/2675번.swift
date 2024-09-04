/*
2
3 ABC
5 /HTP
->
AAABBBCCC
/////HHHHHTTTTTPPPPP

S R - 새문자열 P
-> 모든 글자 R번씩 반복하기

1. 3번 반복
2. 문자열 공백이면 생략 배열의 갯수로 예외 처리
3. R번만큼 반복하고 문자열 추가
 3.1 한 글자씩 S번 반복해서 sumStr에 추가하기
*/

var n = Int(readLine()!)!

var sumArr: [String] = []
for _ in 1...n {
    let arr = readLine()!.split(separator: " ")
    var sumStr: String = ""
    
    if (arr.count == 2) {
        
        let S = Int(arr[0])!
        let R = arr[1]
        
        if R != " " {
            for i in R {
                for j in 1...S {
                    sumStr += String(i)
                }
                
            }
        }
        sumArr.append(sumStr)
    }

}

for y in sumArr {
    print(y)
}