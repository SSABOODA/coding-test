// 캐릭터의 좌표
// https://school.programmers.co.kr/learn/courses/30/lessons/120861

import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    
    var x: Int = 0
    var y: Int = 0
    
    var boardHarfX: Int = board[0] / 2
    var boardHarfY: Int = board[1] / 2
    
    for i in keyinput {
        if i == "left" {
            -boardHarfX >= x ? (x -= 0) : (x -= 1)
        } else if i == "right" {
            boardHarfX <= x ? (x += 0) : (x += 1)
        } else if i == "down" {
            -boardHarfY >= y ? (y -= 0) : (y -= 1)
        } else {
            boardHarfY <= y ? (y += 0) : (y += 1)
        }
    }
    return [x, y]
}
