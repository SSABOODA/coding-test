// 쿼드압축 후 개수 세기
// https://school.programmers.co.kr/learn/courses/30/lessons/68936

import Foundation

var oneCount:Int = 0
var zeroCount:Int = 0
 
func divisionQuadTreeRecursion(_ tree: [[Int]], _ row:Int, _ colum:Int, _ n:Int) {
    var checkNumber:Int = tree[row][colum]
    
    for i in row..<row+n {
        for j in colum..<colum+n {
            if checkNumber != tree[i][j] {
                divisionQuadTreeRecursion(tree, row, colum, n/2) //0..<2 0..<2
                divisionQuadTreeRecursion(tree, row, colum + n/2, n/2) //0..<2 2..<4
                divisionQuadTreeRecursion(tree, row + n/2, colum, n/2) //2..<4 0..<2
                divisionQuadTreeRecursion(tree, row + n/2, colum + n/2, n/2) //2..<4 2..<4
                return
            }
        }
    }
    (checkNumber == 1) ? (oneCount += 1) : (zeroCount += 1)
}

func solution(_ arr:[[Int]]) -> [Int] {
    let n = arr.first!.count
    divisionQuadTreeRecursion(arr, 0, 0, n)
    return [zeroCount, oneCount]
}
