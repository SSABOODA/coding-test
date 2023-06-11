// 콜라 문제
// https://school.programmers.co.kr/learn/courses/30/lessons/132267

import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {

    var currentCoke: Int = n
    var result: Int = 0
    
    while true {
        if currentCoke < a {
            break
        }
        result += ( (currentCoke / a) * b )
        currentCoke = currentCoke - ( (currentCoke / a) * a ) + ( (currentCoke / a) * b )
    }
    
    return result
}