let arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
var sum = 0

for i in arr {
    sum = sum + i * i
}
print(sum % 10)
