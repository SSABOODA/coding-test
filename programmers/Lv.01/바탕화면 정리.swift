// 바탕화면 정리
// https://school.programmers.co.kr/learn/courses/30/lessons/161990

import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var positionX: [Int] = []
    var positionY: [Int] = []
    for (idx1, value1) in wallpaper.enumerated() {    
        for (idx2, value2) in value1.enumerated() {
            if value2 == "#" {
                positionX.append(idx1)
                positionY.append(idx2)
            }
        }
    }
    
    let x = positionX.sorted(by: <)
    let y = positionY.sorted(by: <)
    
    let result = [ x[0], y[0], (x.last!+1), (y.last!+1) ]
    
    return result
}