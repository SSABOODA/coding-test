// https://school.programmers.co.kr/learn/courses/30/lessons/120848

import Foundation

func solution(_ n:Int) -> Int {
    
    var repeatNumber: Int = 0
    while true {
        repeatNumber += 1
        
        var factorialNumber: Int = 1
        for i in 1...repeatNumber {
            factorialNumber *= i
        }
        
        if factorialNumber > n {
            break
        }
    }
    return repeatNumber - 1
}