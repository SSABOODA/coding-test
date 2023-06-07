// 제곱수 판별하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120909

import Foundation

func solution(_ n:Int) -> Int {
    
    var x: Int = 1
    
    while true {
        if n == (x * x) {
            return 1
        }
        x += 1
        if x > 1_000 {
            break
        }
    }
    return 2
}
