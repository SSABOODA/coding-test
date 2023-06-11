// 음양 더하기
// https://school.programmers.co.kr/learn/courses/30/lessons/76501

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var a: [Int] = absolutes
    var s: [Bool] = signs
    
    var result: Int = 0
    for (i, j) in zip(a, s) {
        j == true ? (result += i) : (result -= i)
    }    
    return result
}