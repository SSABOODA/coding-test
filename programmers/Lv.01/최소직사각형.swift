// 최소직사각형
// https://school.programmers.co.kr/learn/courses/30/lessons/86491

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var newSizes: [[Int]] = []
    for size in sizes {
        var newSize: [Int] = size
        if newSize[0] < newSize[1] {
            newSize.swapAt(0, 1)
            newSizes.append(newSize)
        } else {
            newSizes.append(newSize)
        }
    }
    
    let maxWidth = newSizes.map { $0[0] }.max()!
    let maxHeight = newSizes.map { $0[1] }.max()!
    
    return maxWidth * maxHeight
}
