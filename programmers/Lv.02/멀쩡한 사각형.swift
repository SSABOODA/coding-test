// 멀쩡한 사각형
// https://school.programmers.co.kr/learn/courses/30/lessons/62048

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

func solution(_ w:Int, _ h:Int) -> Int64 {
    var answer:Int = 0
    var total:Int = w*h
    answer = total - (w + h - gcd(w, h))
    return Int64(answer)
}