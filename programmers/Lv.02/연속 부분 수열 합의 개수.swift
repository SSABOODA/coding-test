// 연속 부분 수열 합의 개수
// https://school.programmers.co.kr/learn/courses/30/lessons/131701

import Foundation

func solution(_ elements:[Int]) -> Int {

    var result = Set<Int>()
    let doubleElement = elements + elements
    
    for i in 0..<elements.count {
        var value: Int = 0
        for j in 0..<elements.count {
            value += doubleElement[i+j]
            result.insert(value)
        }
    }
    return result.count
}
