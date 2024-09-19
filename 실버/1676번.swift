//팩토리얼 계산
import Foundation

let n = Int(readLine()!)!


var count = 0
var divisor = 5

while n / divisor > 0 {
    count += n / divisor
    divisor *= 5
}
print(count)
