// 옹알이 (1)
// https://school.programmers.co.kr/learn/courses/30/lessons/120956

import Foundation

func solution(_ babbling:[String]) -> Int {
    
    let success = ["aya", "ye", "woo", "ma"]
    
    var result: Int = 0
    for i in babbling {
        var str: String = ""
        
        for j in i {
            str += String(j)
            if success.contains(str) {
                str = ""
            } else {
                continue
            }
        }
        if str.isEmpty {
            result += 1
        }
    }
    return result
}