// 문자열 정렬하기 (2)
// https://school.programmers.co.kr/learn/courses/30/lessons/120911

import Foundation

func solution(_ my_string:String) -> String {
    return Array(my_string.lowercased()).sorted().map {String($0)}.joined(separator: "")
}