// https://school.programmers.co.kr/learn/courses/30/lessons/120846

import Foundation

func solution(_ n:Int) -> Int {
    var resultNum: Int = 0
    for i in 1...n {
        if (1...i).filter {i % $0 == 0}.count > 2 {
            resultNum += 1
        }
    }
    return resultNum
}