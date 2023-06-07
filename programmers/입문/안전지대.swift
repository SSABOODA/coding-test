// 안전지대
// https://school.programmers.co.kr/learn/courses/30/lessons/120866

import Foundation

func solution(_ board:[[Int]]) -> Int {
    
    var resultArr: [[Int]] = board
    
    var topDangerZone: [[Int]] = []
    var middleDangerZone: [[Int]] = []
    var bottomDangerZone: [[Int]] = []
    
    for (offset1, element1) in board.enumerated() {
        for (offset2, element2) in element1.enumerated() {
            
            if element2 == 1 {
                
                topDangerZone.append([offset1 - 1, offset2 - 1])
                topDangerZone.append([offset1 - 1, offset2])
                topDangerZone.append([offset1 - 1, offset2 + 1])
                
                middleDangerZone.append([offset1, offset2 - 1])
                middleDangerZone.append([offset1, offset2 + 1])
                
                bottomDangerZone.append([offset1 + 1, offset2 - 1])
                bottomDangerZone.append([offset1 + 1, offset2])
                bottomDangerZone.append([offset1 + 1, offset2 + 1])
                
                for i in topDangerZone {
                    if (i[0] != -1) && (i[1] != -1) {
                        if (i[0] < board.count) && (i[1] < element1.count) {
                            resultArr[i[0]][i[1]] = 1
                        }
                    }
                }
                
                for i in middleDangerZone {
                    if (i[0] != -1) && (i[1] != -1) {
                        if (i[0] < board.count) && (i[1] < element1.count) {
                            resultArr[i[0]][i[1]] = 1
                        }
                    }
                }
                
                for i in bottomDangerZone {
                    if (i[0] != -1) && (i[1] != -1) {
                        if (i[0] < board.count) && (i[1] < element1.count) {
                            resultArr[i[0]][i[1]] = 1
                        }
                    }
                }
            }
        }
    }

    return resultArr.flatMap {$0}.filter {$0 == 0}.count
}
