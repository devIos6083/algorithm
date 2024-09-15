/*
3의 배수이면서 5의 배수이면 fizzbuzz
/ 3의 배수면 fizz
/ 5의배수이면 buzz
/ 다 아니면 I 그대로
/


Fizz
Buzz
11

980803
980804
FizzBuzz

->
Fizz

980806
*/

let a = readLine()!
let b = readLine()!
let c = readLine()!

let strA = ["Fizz","Buzz","FizzBuzz"]
var res = 0

if !strA.contains(a) {
    res = Int(a)! + 3
} else if !strA.contains(b) {
    res = Int(b)! + 2
} else {
    res = Int(c)! + 1
}

if res % 3 == 0 && res % 5 == 0 {
    print("FizzBuzz")
} else if res % 3 == 0 {
    print("Fizz")
} else if res % 5 == 0 {
    print("Buzz")
} else {
    print(res)
}