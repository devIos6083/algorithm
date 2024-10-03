import Foundation

// 1. 산술평균(소수점 첫째 자리에서 반올림)
func mean(_ arr: [Int]) -> Int {
    let sum = arr.reduce(0, +)
    let meanDouble = Double(sum) / Double(arr.count)
    
    // 소수점 첫째 자리에서 반올림 (음수 처리 포함)
    return Int(round(meanDouble))
}

// 2. 중앙값
func center(_ arr: [Int]) -> Int {
    let sortedArr = arr.sorted()  // 배열을 정렬
    let midIndex = arr.count / 2  // 중앙 인덱스
    return sortedArr[midIndex]
}

// 3. 최빈값 (여러 개 있을 경우 두 번째로 작은 값 반환)
func maxCount(_ arr: [Int]) -> Int {
    var frequencyDict = [Int: Int]()  // 숫자의 빈도를 저장할 딕셔너리
    
    // 배열의 숫자 빈도를 딕셔너리에 저장 (key: 숫자, value: 빈도)
    for num in arr {
        frequencyDict[num, default: 0] += 1
    }
    
    // 가장 높은 빈도를 찾음
    let maxFrequency = frequencyDict.values.max()!
    
    // 최대 빈도를 가진 숫자들을 오름차순으로 정렬
    let maxKeys = frequencyDict.filter { $0.value == maxFrequency }.map { $0.key }.sorted()
    
    // 최빈값이 여러 개일 경우 두 번째로 작은 값을 반환
    if maxKeys.count >= 2 {
        return maxKeys[1]  // 두 번째로 작은 값
    } else {
        return maxKeys[0]  // 최빈값이 하나인 경우
    }
}

// 4. 범위 (최대값 - 최소값)
func range(_ arr: [Int]) -> Int {
    let maxVal = arr.max()!
    let minVal = arr.min()!
    return maxVal - minVal
}

// 메인 부분
let count = Int(readLine()!)!
var arrC: [Int] = []

for _ in 0..<count {
    let number = Int(readLine()!)!
    arrC.append(number)
}

// 출력
print(mean(arrC))     // 산술평균
print(center(arrC))   // 중앙값
print(maxCount(arrC)) // 최빈값
print(range(arrC))    // 범위
