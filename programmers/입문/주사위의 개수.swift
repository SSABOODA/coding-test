// https://school.programmers.co.kr/learn/courses/30/lessons/120845#

import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    return (box[0] / n ) * (box[1] / n ) * (box[2] / n )
}