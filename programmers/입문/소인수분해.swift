// https://school.programmers.co.kr/learn/courses/30/lessons/120852

import Foundation

func solution(_ n:Int) -> [Int] {
    var result: [Int] = []
    var num = n
    while true {
        if num == 1 {
            break
        }
        for i in 2...num {
            if num % i == 0 {
                result.append(i)
                num /= i
                break
            }
        }
    }
    return Array(Set(result)).sorted()
}
