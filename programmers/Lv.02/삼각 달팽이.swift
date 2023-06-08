// 삼각 달팽이
// https://school.programmers.co.kr/learn/courses/30/lessons/68645

import Foundation

func solution(_ n:Int) -> [Int] {

    var arr = (1...n).map { [Int](repeating: 0, count: $0) }

    var maxNum: Int = (1...n).reduce(0, +)

    var dCount1:Int = 0
    var dCount2:Int = n
    var rCount1:Int = 1
    var rCount2:Int = n

    var uCount:Int = n-2

    var dLine:Int = 0
    var rLine:Int = n-1

    var uX:Int = n-2
    var uY:Int = n-2

    var num:Int = 0
    while true {

        // down
        for i in dCount1..<dCount2 {
            if maxNum == num { break }
            num += 1
            arr[i][dLine] = num
        }

        if maxNum == num { break }

        // right
        for j in rCount1..<rCount2 {
            if maxNum == num { break }
            num += 1
            arr[rLine][j] = num
        }

        if maxNum == num { break }

        // up
        for j in 0..<uCount {
            if maxNum == num { break }
            num += 1
            arr[uX-j][uY-j] = num
        }

        if maxNum == num { break }

        dLine += 1
        rLine -= 1

        dCount1 += 2
        dCount2 -= 1
        rCount1 += 1
        rCount2 -= 2
        uCount -= 3

        uX -= 1
        uY -= 2
    }
    return arr.flatMap { $0 }
}