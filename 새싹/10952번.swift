
var ans: [Int] = []
while true {
    let arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
    let A = arr[0]
    let B = arr[1]
    
    if A == 0 && B == 0 {
        break
    } else {
        ans.append(A + B)
    }

}
for i in ans {
    print(i)
}