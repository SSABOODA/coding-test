// 겹치는 선분의 길이
// https://school.programmers.co.kr/learn/courses/30/lessons/120876

import Foundation


func solution(_ lines:[[Int]]) -> Int {
    var wholeLine = Array(repeating: 0, count: 200)
    for line in lines {
        let line = line.sorted()
        for idx in stride(from: line.first!, to: line.last!, by: 1) {
            wholeLine[idx + 100] += 1
        }
    }

    return wholeLine.filter { $0 >= 2 }.count
}