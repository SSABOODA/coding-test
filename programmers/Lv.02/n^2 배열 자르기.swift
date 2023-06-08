// n^2 배열 자르기
// https://school.programmers.co.kr/learn/courses/30/lessons/87390

import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    let l = Int(left)
    let r = Int(right)
    
    var matrix = [Int]()
    
    for i in l...r {
        matrix.append(max(i/n, i%n) + 1)
    }
    return matrix
}