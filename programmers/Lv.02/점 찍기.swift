// 점 찍기
// https://school.programmers.co.kr/learn/courses/30/lessons/140107

import Foundation

func solution(_ k:Int, _ d:Int) -> Int64 {
    
    var answer:Int64 = 0
    for i in 0...d/k {
        let cal = sqrt( pow(Double(d), 2.0) - pow(Double(i*k), 2.0) )
        answer += 1
        answer += Int64(cal) / Int64(k)
    }
    return answer
}
