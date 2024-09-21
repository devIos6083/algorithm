/*
갯수대로 단어를 입력하고
짧은 순으로 출력하기

13
but
i
wont
hesitate
no
more
no
more
it
cannot
wait
im
yours

->
i
im
it
no
but
more
wait
wont
yours
cannot
hesitate

*/
import Foundation

let count = Int(readLine()!)!
var strSet: Set<String> = []

for _ in 0..<count {
    let str = readLine()!
    strSet.insert(str)
}
let strArray = strSet.sorted {
    $0.count == $1.count ? $0 < $1 : $0.count < $1.count
}

for i in strArray {
    print(i)
}
