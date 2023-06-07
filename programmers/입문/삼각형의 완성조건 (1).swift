// https://school.programmers.co.kr/learn/courses/30/lessons/120889

import Foundation

func solution(_ sides:[Int]) -> Int {
    var sidesArray = sides
    var maxSideNum: Int = 0
    var sumSideNum: Int = 0
    
    sidesArray.sort()
    maxSideNum = sidesArray[sidesArray.endIndex - 1]
    sidesArray.removeLast()
    sumSideNum = sidesArray.reduce(0) {sum, num in return sum + num}
    
    return maxSideNum < sumSideNum ? 1 : 2
}