// 삼총사
// https://school.programmers.co.kr/learn/courses/30/lessons/131705

import Foundation

func solution(_ number:[Int]) -> Int {
    var result: Int = 0
    
    for i in 0..<number.count {
        for j in i+1..<number.count {
            for k in j+1..<number.count {
                if number[i] + number[j] + number[k] == 0 {
                    result += 1
                }
            }
        }
    }
    return result
}
