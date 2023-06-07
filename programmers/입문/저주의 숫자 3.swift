// 저주의 숫자 3
// https://school.programmers.co.kr/learn/courses/30/lessons/120871

import Foundation

func solution(_ n:Int) -> Int {
    
    var result: Int = 0
    
    for _ in 1...n {
        result += 1
        
        while true {
            if String(result).contains("3") || (result % 3 == 0) {
                result += 1
            } else {
                break
            }
        }
    }
    return result
}