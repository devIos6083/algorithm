
/*
* 1부터 8까지 연주하면 ascending
* 8부터 1까지 descending
* 그게 아니면 mixed
* 판별 프로그램 - 배열 메서드 이용

1 2 3 4 5 6 7 8
->
ascending

8 7 6 5 4 3 2 1
->
descending

8 1 7 2 6 3 5 4
->
mixed

*/

let arr = readLine()!.split(separator: " ").map{(Int(String($0))!)}
var result = ""
if arr.sorted() == arr {
    result = "ascending"
} else if arr.reversed() == arr.sorted() {
    result = "descending"
} else {
    result = "mixed"
}
print(result)

