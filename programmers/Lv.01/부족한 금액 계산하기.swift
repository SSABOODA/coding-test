// 부족한 금액 계산하기
// https://school.programmers.co.kr/learn/courses/30/lessons/82612

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
    var answer:Int = (1...count).map { $0 * price}.reduce(0, +)
    return answer > money ? Int64(answer - money) : 0
}