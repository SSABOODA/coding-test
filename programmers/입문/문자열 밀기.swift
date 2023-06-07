// 문자열 밀기
// https://school.programmers.co.kr/learn/courses/30/lessons/120921

import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var a: String = A
    
    if A == B {
        return 0
    }
    for i in 1...a.count {
        a = String(a.popLast()!) + a
        if a == B {
            return i
        }
    }
    return -1
}