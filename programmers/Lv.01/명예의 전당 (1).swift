// 명예의 전당 (1)
// https://school.programmers.co.kr/learn/courses/30/lessons/138477

import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    var scoreSet: [Int] = []
    var result: [Int] = []
    var s: Int = 0
    for i in 0..<score.count {
        scoreSet.append(score[i])
        
        if scoreSet.count < k {
            s = scoreSet.min()!
        } else {
            s = scoreSet.sorted(by: >)[k-1] 
        }
        result.append(s)
    }
    return result
}