// 숫자 입력받기
let N = Int(readLine()!)!
let arrA: [Int] = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let M = Int(readLine()!)!
let arrM: [Int] = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let setA = Set(arrA)
// 포함하는지 contains 메서드 이용 -> 시간 초과(O(n))
// 세트로 변환하기 -> 존재하냐 안하냐니깐 중복 없어도 됨 -> 시간 복잡도 (O(1))
for x in arrM {
    if setA.contains(x){
        print(1)
    } else {
        print(0)
    }
}