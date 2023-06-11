// 공원 산책
// https://school.programmers.co.kr/learn/courses/30/lessons/172928

import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    
    let newPark = park.map { Array($0) }
    
    let parkSizeX: Int = park[0].count
    let parkSizeY: Int = park.count
    
    var startI: Int = 0
    var startJ: Int = 0
    
    var checkStartI: Int = startI
    var checkStartJ: Int = startJ
    
    for (idx, value) in newPark.enumerated() {
        if value.contains("S") {
            startI = idx
            startJ = value.firstIndex(of: "S")!
        }
    }
    
    for route in routes {
        let routeArr = route.components(separatedBy: " ")
        let direction = routeArr.first!
        let move = Int(routeArr.last!)!
        
        var i: Int = 0
        for _ in 1...move {
            i += 1
            
            if direction == "N" {
                if i == 1 {
                    if (startI-move) < 0 { break }
                }
                
                let position = newPark[startI-1][startJ]
                if position == "X" {
                    startI += (i-1)
                    i = 0
                    break
                }
                startI -= 1
                
            } else if direction == "W" {
                if i == 1 {
                    if (startJ-move) < 0 { break }
                }
                
                let position = newPark[startI][startJ-1]
                if position == "X" {
                    startJ += (i-1)
                    i = 0
                    break
                }
                startJ -= 1
                
            } else if direction == "E" {
                if i == 1 {
                    if (startJ+move) >= parkSizeX { break }
                }
                
                let position = newPark[startI][startJ+1]
                if position == "X" {
                    startJ -= (i-1)
                    i = 0
                    break
                }
                startJ += 1
            } else {
                if i == 1 {
                    if (startI+move) >= parkSizeY { break }
                }
                
                let position = newPark[startI+1][startJ]
                if position == "X" {
                    startI -= (i-1)
                    i = 0
                    break
                }
                startI += 1
            }
        }
    }
    return [startI, startJ]
}
