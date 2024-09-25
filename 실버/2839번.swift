
let N = Int(readLine()!)!
var numA: Int
var numT: Int
let nanum = N / 5

var minV = 2147000000

// 나누어 떨어지는 경우
if N % 3 == 0 {
    let num = N / 3
    minV = num
}
if N % 5 == 0 {
    let num = N / 3
    if minV > num {
        minV = num
    }
    
}
if nanum >= 1 {
    // 3과 5를 적절히 나눠져야 하는경우 -> 시간복잡도 O(N)
    for i in 1...nanum {
        if (N - i * 5) % 3 == 0 {
            let num = (N - i * 5) / 3
            if minV > num + i {
                minV = num + i
            }
        }
    }
}


// 최솟값 출력 없다면 -1 sorted 함수는 시간복잡도 O(NlogN) -> 수정해야함

if minV < 2147000000 {
    print(minV)
} else {
    print(-1)
}


