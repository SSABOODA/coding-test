// 7의 개수
// https://school.programmers.co.kr/learn/courses/30/lessons/120912

import Foundation

func solution(_ array:[Int]) -> Int {
    return array.map {String($0)}.joined().map {$0 == "7"}.filter {$0 == true}.count
}