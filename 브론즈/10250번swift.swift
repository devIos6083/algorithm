// 1) 층수 부여하기 위해선  N % H -> YY구할 수 있음
// 2) 호수 부여하기 위해선 N / H + 1 -> XX 구할 수 있음
// 3) 만약 xx가 10보다 작으면 앞에 0 붙이기 그게 아니면 그냥 두개 붙이기
// 4) 꼭대기 층인 경우 예외 생각하기
let n = Int(readLine()!)!
var ans: [String] = []

for i in 1...n {
    let arr: [Int] = readLine()!.split(separator: " ").map{(Int(String($0))!)}
    let H = arr[0]
    let W = arr[1]
    let N = arr[2]
    
    var yy = N % H
    var xx = N / H + 1
    if  yy == 0 {
        yy = H
        xx = N / H
    }
    
    if xx < 10 {
        ans.append(String(yy) + "0" + String(xx))
    } else {
        ans.append(String(yy) + String(xx))
    }

}

for i in ans {
    print(i)
}
