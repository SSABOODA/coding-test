// 가장 큰 정사각형 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/12905

import Foundation

func solution(_ board:[[Int]]) -> Int {

    var answer:Int = 1
    var board = board
    var xMax:Int = board.count-1
    var yMax:Int = board[0].count-1
    var zeroCnt:Int = 0
    
    for x in 0...xMax {
        for y in 0...yMax {
            if board[x][y] == 0 { 
                zeroCnt += 1
                continue 
            }
            if (x >= xMax) || (y >= yMax) { continue }
            
            // 정사각형 검사 시작
            let a = board[x][y]
            let b = board[x][y+1]
            let c = board[x+1][y]
            let d = board[x+1][y+1]

            if (a != 0) && (b != 0) && (c != 0) && (d != 0) {
                let temp = [a,b,c].min()! + 1
                board[x+1][y+1] = temp
                if temp > answer { answer = temp }
            }
        }
    }
    return (zeroCnt == (xMax+1)*(yMax+1)) ? 0 : answer*answer
}
