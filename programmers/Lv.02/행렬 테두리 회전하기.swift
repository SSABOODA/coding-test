// 행렬 테두리 회전하기
// https://school.programmers.co.kr/learn/courses/30/lessons/77485

import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    
    var matrix: [[Int]] = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    var k = 1
    for i in 0..<rows {
        for j in 0..<columns {
            matrix[i][j] = k
            k += 1
        }
    }
    
    var newMatrix = matrix
    var result = [Int]()
    for q in queries {

        var x1:Int = q[0]-1
        var y1:Int = q[1]-1
        var x2:Int = q[2]-1
        var y2:Int = q[3]-1
        
        if (x1 == 1) && (y1 == 1) && (x2 == rows) && (y2 == columns) {
            result.append(1)
            continue
        }

        var minArr = [Int]()

        // 1
        for i in 0..<y2-y1 {
            newMatrix[x1][y1+1+i] = matrix[x1][y1+i]
            minArr.append(matrix[x1][y1+i])
        }

        // 2
        for j in 0..<x2-x1 {
            newMatrix[x1+1+j][y2] = matrix[x1+j][y2]
            minArr.append(matrix[x1+j][y2])
        }

        // 3
        for k in 0..<y2-y1 {
            newMatrix[x2][y2-1-k] = matrix[x2][y2-k]
            minArr.append(matrix[x2][y2-k])
        }

        // 4
        for l in 0..<x2-x1 {
            newMatrix[x2-1-l][y1] = matrix[x2-l][y1]
            minArr.append(matrix[x2-l][y1])
        }

        result.append(minArr.min()!)
        matrix = newMatrix
    }
    return result
}