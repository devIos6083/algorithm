import Foundation

func soluton3(n: Int) -> Int {
    var count = 0
    var num = 0
    
    while count != n { // count = n일때까지
        var temp = num
        
        while temp >= 666 {
            if temp % 1000 == 666 { count += 1; break }
            else { temp /= 10 }
        }
        
        num += 1
    }
    
    return num-1
}
let n = Int(readLine()!)!
print(soluton3(n: n))
