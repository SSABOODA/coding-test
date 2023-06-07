// 등수 매기기
// https://school.programmers.co.kr/learn/courses/30/lessons/120882

import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var answer: [Int] = []
    let total = score.map { $0.reduce(0, +) }
    print(total)
    
    for tmp in total {
        answer.append(total.filter { $0 > tmp }.count + 1)
    }

    return answer
}
