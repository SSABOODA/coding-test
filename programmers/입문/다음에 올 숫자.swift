// 다음에 올 숫자
// https://school.programmers.co.kr/learn/courses/30/lessons/120924

import Foundation

func solution(_ common:[Int]) -> Int {

    var c: [Int] = common

    if (c[1] - c[0]) == (c[2] - c[1]) {
        return c[c.count - 1] + (c[1] - c[0])
    } else {
        return c[c.count - 1] * (c[1] / c[0])
    }
}
