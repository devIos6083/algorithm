// 각 경우에 대해 입력받기
let caseNum = Int(readLine()!)!
let cardNum = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let myCardCase = Int(readLine()!)!
let myCardNum = readLine()!.split(separator: " ").map{(Int(String($0))!)}
var cardCount = [Int:Int]()
var myCardCount = [Int:Int]()

// for문 이용해서 해당 숫자가 존재한다면 +1 해주기
// 1) for문 두개를 이용하면 시간복잡도 O(n^2) 이므로 패스
// 2) 딕셔너리를 사용해서 시간복자도 O(N)으로 줄일 수 있음. -> 중복된 값 생각해서 추가해주고
for cards in cardNum {
    cardCount[cards,default: 0] += 1
}

// 출력
// 내가 가지고 있는 숫자를 하나씩 꺼내면서 키에 존재한다면 값을 꺼내기 없는경우 0
for x in myCardNum {
    if let count = cardCount[x] {
        print(count,terminator: " ")
    } else {
        print(0,terminator: " ")
    }
}
