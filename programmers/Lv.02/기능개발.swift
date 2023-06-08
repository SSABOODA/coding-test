// 기능개발
// https://school.programmers.co.kr/learn/courses/30/lessons/42586

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var requiredDays: [Int] = []
    
    for (p, s) in zip(progresses, speeds) {        
        let cal = Int(ceil(Double(100 - p) / Double(s)))
        requiredDays.append(cal)
    }
    var result: [Int] = []
    var checkDay: Int = 0
    var sameDay: Int = 1
    for i in 0..<requiredDays.count {
        if i == 0 {
            checkDay = requiredDays[i]
            continue
        }
        if requiredDays[i] <= checkDay {
            sameDay += 1
        } else {
            result.append(sameDay)
            checkDay = requiredDays[i]
            sameDay = 1
        }
    }
    result.append(sameDay)
    return result
}
