let num = Int(readLine()!)!
var queue: ArraySlice<Int> = []
 
// 큐에 넣기
for i in 1...num {
    queue.append(i)
}

// 선입 선출(큐) 이용 -> while문 사용하면 (n번 탐색 -> n번 반복) -> 시간초과(시간복잡도 O(n^2))
// removeFirst를 줄이기 위해서 ArraySlice이용
while queue.count > 1 {
    queue.removeFirst()
    queue.append(queue.removeFirst())
}

print(queue.first!)
