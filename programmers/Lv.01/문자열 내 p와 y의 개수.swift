// 문자열 내 p와 y의 개수
// https://school.programmers.co.kr/learn/courses/30/lessons/12916

import Foundation

func solution(_ s:String) -> Bool {
    return s.lowercased().filter {$0 == "p"}.count == s.lowercased().filter {$0 == "y"}.count ? true : false
}