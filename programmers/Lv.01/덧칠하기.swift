// 덧칠하기
// https://school.programmers.co.kr/learn/courses/30/lessons/161989

import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var coveredIndex: Int = 0
    var result: Int = 0
    for (_, value) in section.enumerated() {
        if value > coveredIndex {
            coveredIndex = value + m - 1
            result += 1
        }
    }
    return result
}