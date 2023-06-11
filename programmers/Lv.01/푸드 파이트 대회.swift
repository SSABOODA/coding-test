// 푸드 파이트 대회
// https://school.programmers.co.kr/learn/courses/30/lessons/134240

import Foundation

func solution(_ food:[Int]) -> String {
    
    var result: String = ""
    for (offset, value) in food[0...food.endIndex - 1].enumerated() {
        if value > 1 {
            result += String(repeating: "\(offset)", count: (value / 2))
        }
    }
    
    return result + "0" + result.reversed()
}