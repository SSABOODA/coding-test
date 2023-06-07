// 자릿수 더하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120906

import Foundation

func solution(_ n:Int) -> Int {
    return String(n).reduce(0) {s, n in return s + Int(String(n))!} 
}
