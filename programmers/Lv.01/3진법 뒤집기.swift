// 3진법 뒤집기
// https://school.programmers.co.kr/learn/courses/30/lessons/68935

import Foundation

func solution(_ n:Int) -> Int {
    let reverseStr = String(n, radix: 3).reversed()
    let result = Int(String(reverseStr), radix: 3)!
    return result
}