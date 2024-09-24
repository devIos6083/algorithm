var minCount = 2147000
let correctAns1: [[Character]] = [
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"]
]

let correctAns2: [[Character]] = [
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"]
]

let arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let hang = arr[0]
let yul = arr[1]
var probArr: [[Character]] = Array(repeating: Array(repeating: " ", count: yul), count: hang)

// 문제에서 요구하는 배열 집어넣기
for i in 0...hang-1 {
    let row = readLine()!
    probArr[i] = Array(row)
}

// 한줄씩 꺼내면서 비교하기
// 정답지는 그대로 / 행과 열에서 움직이는거 주의 / 처음값 비교해가면 case 분류해나가기
for i in 0...hang - 8 {
    for j in 0...yul - 8 {
        var count1 = 0
        var count2 = 0
        for x in 0...7 {
            for y in 0...7 {
                if probArr[i+x][j+y] != correctAns2[x][y] {
                    count1 += 1
                }
                if probArr[i+x][j+y] != correctAns1[x][y] {
                    count2 += 1
                }
                
               
            }
        }
        let minCnt = min(count1,count2)
        if minCnt < minCount {
            minCount = minCnt
        }
        
    }
}
    

print(minCount)
