// 크레인 인형뽑기 게임
// https://school.programmers.co.kr/learn/courses/30/lessons/64061

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var answer: Int = 0
    var board: [[Int]] = board
    
    var basket: [Int] = []
    for i in moves {
        
        for (idx, j) in board.enumerated() {
            if j[i-1] == 0 {
                continue
            } else {
                if basket.last == j[i-1] {
                    basket.removeLast()
                    answer += 2
                } else {
                    basket.append(j[i-1])
                }
                board[idx][i-1] = 0
                break
            }
        }
    }
    return answer
}
