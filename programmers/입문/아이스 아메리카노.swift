// https://school.programmers.co.kr/learn/courses/30/lessons/120819

import Foundation

func solution(_ money:Int) -> [Int] {
    var coffeeCnt: Int = 0
    while true {
        if money <= (5_500 * coffeeCnt) {
            break
        }
        coffeeCnt += 1
    }

    return money % 5_500 == 0 ? [coffeeCnt, money - (5_500 * coffeeCnt)] : [coffeeCnt - 1, money - (5_500 * (coffeeCnt - 1))]
}
