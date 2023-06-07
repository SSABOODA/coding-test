// 치킨 쿠폰
// https://school.programmers.co.kr/learn/courses/30/lessons/120884

import Foundation

func solution(_ chicken:Int) -> Int {
    
    let c = chicken
    var s: Int = c / 10
    var r: Int = c % 10
    var ms: Int = c / 10
    var lastCal: Int = 0
    
    while ms >= 10 {
        s += ms / 10
        r += ms % 10
        ms = ms / 10
    }
    
    lastCal = ms + r
    
    if (lastCal / 10) + (lastCal % 10) >= 10 {
        s += (lastCal / 10) + 1
    } else {
        s += (lastCal / 10)
    }
    
    
    return s
}
