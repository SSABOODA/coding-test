// 세균 증식
// https://school.programmers.co.kr/learn/courses/30/lessons/120910

import Foundation

func solution(_ n:Int, _ t:Int) -> Int { 
    n * Int(pow(Double(2), Double(t))) 
}