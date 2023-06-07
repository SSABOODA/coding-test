// 외계어 사전
// https://school.programmers.co.kr/learn/courses/30/lessons/120869

import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    
    for d in dic {
        var matchingCount: Int = 0
        for i in Set(d) {
            if spell.contains(String(i)) == true {
                matchingCount += 1
            }
        }
        
        if matchingCount == spell.count {
            return 1
        }    
    }
    return 2
}
