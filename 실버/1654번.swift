// 이진탐색 구현
func binarySearch(_ cables: [Int],_ N: Int) -> Int! {
    var low = 1
    var high = cables.max()!
    
    var result = 0
    while low <= high {
        let mid = (low + high) / 2
        var total = 0
        
        for cable in cables {
            total += cable / mid
        }
        // 만들어진 랜선의 개수가 N보다 크거나 같으면 더 긴 길이로 시도
        if total >= N {
            result = mid // 현재 mid는 가능한 길이이므로 저장
            low = mid + 1 // 더 긴 길이로 시도
        } else {
            high = mid - 1 // mid 길이로는 부족하므로 더 짧은 길이로 시도
        }
    }
    return result
}
// 입력받기
let arrayInput = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let caseNum = arrayInput[0]
let wantCase = arrayInput[1]
var numArr: [Int] = []
for _ in 1...caseNum {
    let inputNum = Int(readLine()!)!
    numArr.append(inputNum)
}
let result: Int = binarySearch(numArr, wantCase)
print(result)

