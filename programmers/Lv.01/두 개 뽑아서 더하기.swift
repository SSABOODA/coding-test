// 두 개 뽑아서 더하기
// https://school.programmers.co.kr/learn/courses/30/lessons/68644

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var resultSet: Set<Int> = []
    
    for i in numbers {
        for j in numbers {
            if !(numbers.filter { $0 == i }.count > 1) {
                if i == j { continue }    
            }
            resultSet.insert(i + j)
        }
    }
    
    return Array(resultSet).sorted()
}