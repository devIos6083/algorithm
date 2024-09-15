/*
2
1
3
2
3
->
6
10
*/
var resArr: [Int] = []
let caseA = Int(readLine()!)!  // 테스트 케이스 수 입력

for _ in 1...caseA {
    let floor = Int(readLine()!)!  // 층 수 입력
    let bang = Int(readLine()!)!   // 호 수 입력
    
    // 아파트 배열 초기화 (층: floor+1, 호: bang)
    var apart = Array(repeating: Array(repeating: 0, count: bang), count: floor + 1)
    
    // 0층 초기화: 각 호수에 i명이 사는 조건
    for i in 0..<bang {
        apart[0][i] = i + 1
    }
    
    // 각 층의 사람 수 계산
    for i in 1...floor {  // 1층부터 시작
        for j in 0..<bang {
            apart[i][j] = apart[i-1][0...j].reduce(0, +)  // 이전 층의 1호부터 j호까지의 합
        }
    }
    
    // 결과 배열에 추가 (floor층의 bang호수 값)
    resArr.append(apart[floor][bang - 1])
}

// 결과 출력
for x in resArr {
    print(x)
}