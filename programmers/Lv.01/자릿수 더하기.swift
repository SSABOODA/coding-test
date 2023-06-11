// 자릿수 더하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12931

import Foundation

func solution(_ n:Int) -> Int {
    return String(n).compactMap { Int(String($0)) }.reduce(0, +)     
}