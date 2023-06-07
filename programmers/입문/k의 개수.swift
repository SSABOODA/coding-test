// k의 개수
// https://school.programmers.co.kr/learn/courses/30/lessons/120887

import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    return (i...j).map {String($0)}.joined().filter {String($0) == String(k)}.count
}
