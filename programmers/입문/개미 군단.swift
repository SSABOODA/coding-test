// https://school.programmers.co.kr/learn/courses/30/lessons/120837

import Foundation

func solution(_ hp:Int) -> Int {
    let ga:Int = 5
    let sa:Int = 3
    let wa:Int = 1
    
    var result: Int = 0
    
    result += hp / ga
    
    if hp % ga == 0 {
        return result
    }
    
    result += (hp % ga) / sa
    
    if (hp % ga) % sa == 0 {
        return result
    }
    
    result += ((hp % ga) % sa) / wa
    return result
}
