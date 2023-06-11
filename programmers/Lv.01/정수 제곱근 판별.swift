// 정수 제곱근 판별
// https://school.programmers.co.kr/learn/courses/30/lessons/12934

import Foundation

func solution(_ n:Int64) -> Int64 {
    var sq = sqrt(Double(n))
    return (sq - Double(Int(sq))) > 0 ? -1 : ( (Int64(sq) + 1) * (Int64(sq) + 1) )  
}