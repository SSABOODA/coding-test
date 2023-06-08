// 방문 길이
// https://school.programmers.co.kr/learn/courses/30/lessons/49994

import Foundation

func solution(_ dirs:String) -> Int {
    
    var result: Int = 0
    var moveRecord = [[Int]]()
    var currentPosition: [Int] = [0,0]
    for i in dirs {
        var tempRecord: [Int] = currentPosition
        var checkPosition = [Int]()
        if String(i) == "U" {
            if currentPosition[1]+1 > 5 { continue }
            currentPosition = [currentPosition[0], currentPosition[1]+1]
            
            checkPosition = tempRecord+currentPosition
            if moveRecord.contains(checkPosition) { continue }
            
            checkPosition.swapAt(0, 2)
            checkPosition.swapAt(1, 3)
            if moveRecord.contains(checkPosition) { continue }
            
        } else if String(i) == "D" {
            if currentPosition[1]-1 < -5 { continue }
            currentPosition = [currentPosition[0], currentPosition[1]-1]
            
            checkPosition = tempRecord+currentPosition
            if moveRecord.contains(checkPosition) { continue }
            
            checkPosition.swapAt(0, 2)
            checkPosition.swapAt(1, 3)
            if moveRecord.contains(checkPosition) { continue }
            
        } else if String(i) == "L" {
            if currentPosition[0]-1 < -5 { continue }
            currentPosition = [currentPosition[0]-1, currentPosition[1]]
            
            checkPosition = tempRecord+currentPosition
            if moveRecord.contains(checkPosition) { continue }
            
            checkPosition.swapAt(0, 2)
            checkPosition.swapAt(1, 3)
            if moveRecord.contains(checkPosition) { continue }
            
        } else {
            if currentPosition[0]+1 > 5 { continue }
            currentPosition = [currentPosition[0]+1, currentPosition[1]]
            
            checkPosition = tempRecord+currentPosition
            if moveRecord.contains(checkPosition) { continue }
            
            checkPosition.swapAt(0, 2)
            checkPosition.swapAt(1, 3)
            if moveRecord.contains(checkPosition) { continue }
        }
        result += 1
        
        tempRecord.append(currentPosition[0])
        tempRecord.append(currentPosition[1])
        
        moveRecord.append(tempRecord)
    }
    return result
}