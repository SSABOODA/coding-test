// 추억 점수
// https://school.programmers.co.kr/learn/courses/30/lessons/176963

import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var scoreDict: Dictionary<String, Int> = [:] 
    
    for i in 0...(name.count - 1) {
        scoreDict[name[i]] = yearning[i]
    }
    
    var result: [Int] = []
    
    for p in photo {
        result.append(p.filter {name.contains($0)}.map {scoreDict[$0] ?? 0}.reduce(0, +))
    }
    
    return result
}