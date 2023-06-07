// 약수 구하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120897

import Foundation

func solution(_ n:Int) -> [Int] {
    return (1...n).filter {n % $0 == 0}
}
