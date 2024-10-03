
import Foundation

// 테스트 케이스 입력
let caseA = Int(readLine()!)!

for _ in 0..<caseA {
    // 첫 번째 줄 입력: 문서 개수와 궁금한 문서의 위치
    let wantNumArr = readLine()!.split(separator: " ").map{ Int($0)! }
    let wordNum = wantNumArr[0]
    let wantNum = wantNumArr[1]
    
    // 두 번째 줄 입력: 문서들의 중요도
    var numArr = readLine()!.split(separator: " ").map{ Int($0)! }
    
    // 큐 생성: (문서의 인덱스, 중요도) 형태의 튜플로 관리
    var queue: [(index: Int, priority: Int)] = []
    for (idx, value) in numArr.enumerated() {
        queue.append((idx, value))
    }
    
    var count = 0 // 출력된 문서 수

    while !queue.isEmpty {
        // 현재 큐에서 가장 앞에 있는 문서 확인
        let current = queue.first!
        
        // 남은 큐에서 중요도가 더 높은 문서가 있는지 확인
        if queue.contains(where: { $0.priority > current.priority }) {
            // 중요도가 더 높은 문서가 있으면 현재 문서를 뒤로 보냄
            queue.append(queue.removeFirst())
        } else {
            // 중요도가 가장 높으면 출력
            let printed = queue.removeFirst()
            count += 1
            
            // 출력된 문서가 우리가 찾는 문서(wantNum)라면, 결과 출력 후 종료
            if printed.index == wantNum {
                print(count)
                break
            }
        }
    }
}
