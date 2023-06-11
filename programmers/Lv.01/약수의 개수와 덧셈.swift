// 약수의 개수와 덧셈
// https://school.programmers.co.kr/learn/courses/30/lessons/77884

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result: Int = 0
    for i in (left...right) {
        var cnt: Int = (1...i).filter { i % $0 == 0 }.count
        cnt % 2 == 0 ? (result += i) : (result -= i)
    }
    return result
}