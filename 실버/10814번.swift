/*
사람수 입력받고 나이가 낮은 순으로 정렬
/ 나이가 같으면 먼저 가입한 사람이 앞에 오는 순서

3
21 Junkyu
21 Dohyun
20 Sunyoung
->
20 Sunyoung
21 Junkyu
21 Dohyun

*/

let count = Int(readLine()!)!
var ageTup: [(Int,String,Int)] = []
// 입력 받기
for i in 0...count-1 {
    let ageArr = readLine()!.split(separator: " ")
    let age = Int(ageArr[0])!
    let name = String(ageArr[1])
    ageTup.append((age,name,i))
}

// 2차원 튜플에 정렬하기
ageTup.sort {
    if $0.0 == $1.0 {
        return $0.2 < $1.2
    } else {
        return $0.0 < $1.0
    }
}

for i in 0...count-1 {
    print(ageTup[i].0,ageTup[i].1)
}
