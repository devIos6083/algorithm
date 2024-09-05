// 알파벳 배열
let wordArr: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

// 알파벳의 등장 위치를 -1로 초기화
var countArr = Array(repeating: -1, count: wordArr.count)
let strA = readLine()!

// 문자열 strA의 각 문자와 인덱스를 순회
for (idx, val) in strA.enumerated() {
    // 현재 문자가 wordArr에서 몇 번째 인덱스인지 찾기
    if let index = wordArr.firstIndex(of: String(val)) {
        // countArr의 해당 인덱스가 -1일 때만 갱신 (처음 등장 위치만 저장)
        if countArr[index] == -1 {
            countArr[index] = idx
        }
    }
}

// 결과 출력
for x in countArr {
    print(x, terminator: " ")
}
