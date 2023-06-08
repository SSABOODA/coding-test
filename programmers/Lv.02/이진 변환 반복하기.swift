// 이진 변환 반복하기
// https://school.programmers.co.kr/learn/courses/30/lessons/70129

import Foundation

func solution(_ s:String) -> [Int] {
    
    var s: String = s
    var removeZeroCount: Int = 0
    var repeatCount: Int = 0
    
    while true {
        if s.count == 1 { break}
        
        repeatCount += 1
        
        let oneArr = s.filter { $0 == "1" }
        removeZeroCount += s.count - oneArr.count
        
        s = String(oneArr.count, radix: 2)
    }
    return [repeatCount, removeZeroCount]
}
