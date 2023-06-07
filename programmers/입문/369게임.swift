// https://school.programmers.co.kr/learn/courses/30/lessons/120891

import Foundation

func solution(_ order:Int) -> Int {
    return Array(String(order)).filter {$0 != "0"}.filter {Int(String($0))! % 3 == 0}.count
}
