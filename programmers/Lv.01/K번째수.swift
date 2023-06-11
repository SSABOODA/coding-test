// K번째수
// https://school.programmers.co.kr/learn/courses/30/lessons/42748

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result: [Int] = []
    for c in commands {
        var i: Int = c[0] - 1
        var j: Int = c[1] - 1
        var k: Int = c[2] - 1
        result.append(array[i...j].sorted()[k])
    }
    return result
}
