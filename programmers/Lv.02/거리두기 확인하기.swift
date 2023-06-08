// 거리두기 확인하기
// https://school.programmers.co.kr/learn/courses/30/lessons/81302

import Foundation

func solution(_ places:[[String]]) -> [Int] {
    
    var result = [Int]()
    for place in places {
        
        var matrix = Array(repeating: Array(repeating: "0", count: 5), count: 5)
        
        var PCordination = [[Int]]()
        for (idx1, p) in place.enumerated() {
            for (idx2, i) in p.enumerated() {
                
                matrix[idx1][idx2] = String(i)
                
                if i == "P" {
                    PCordination.append([idx1, idx2])
                }
            }
        }
        
        var checkDistance:Int = 1 // 0: 미준수, 1: 준수
        var distance:Int = 0
        
        for i in 0..<PCordination.count {
            for j in i+1..<PCordination.count {
                
                let a1 = PCordination[i][0]
                let b1 = PCordination[i][1]
                let a2 = PCordination[j][0]
                let b2 = PCordination[j][1]
                
                // 사람 사이의 거리
                distance = abs(a1-a2) + abs(b1-b2)
                
                if distance > 2 { 
                    continue 
                } else if distance < 2 {
                    checkDistance = 0
                    break
                }
                
                // 거리두기 조건 걸기
                if a1 == a2 {
                    // 1) 좌우
                    let t = abs(b1+b2) / 2
                    if matrix[a1][t] == "O" {
                        checkDistance = 0
                        break    
                    }
                } else if b1 == b2 {
                    // 2) 상하
                    let t = abs(a1+a2) / 2
                    if matrix[t][b1] == "O" {
                        checkDistance = 0
                        break    
                    }
                } else {
                    // 3) 대각선
                    if (matrix[a1][b2] == "O") || (matrix[a2][b1] == "O") {
                        checkDistance = 0
                        break
                    }
                }
                
            }
        }
        result.append(checkDistance)
    }
    return result
}