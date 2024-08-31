let arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
var A = arr[0]
var B = arr[1]
if A > B {
    print(">")
} else if (A == B){
    print("==")
} else {
    print("<")
}
