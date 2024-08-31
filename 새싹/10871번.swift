let arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
let n = arr[0]
let m = arr[1]

let ans = readLine()!.split(separator: " ").map{(Int(String($0))!)}
for i in ans {
    if i < m {
        print(i,terminator: " ")
    }
}
