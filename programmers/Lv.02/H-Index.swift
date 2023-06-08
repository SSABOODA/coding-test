// H-Index
// https://school.programmers.co.kr/learn/courses/30/lessons/42747

import Foundation

func solution(_ citations:[Int]) -> Int {
    let sortedCitations = citations.sorted(by: >)
    
    var result: Int = 0
    
    var totalCount = sortedCitations.count
    for _ in 0..<totalCount {

        let cnt = sortedCitations.filter { $0 >= totalCount }.count
        
        if cnt >= totalCount {
            result += totalCount
            break
        }
        totalCount -= 1
    }
    return result == 0 ? sortedCitations[sortedCitations.endIndex-1] : result
}
