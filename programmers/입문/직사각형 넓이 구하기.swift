// 직사각형 넓이 구하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120860

import Foundation

func solution(_ dots:[[Int]]) -> Int {
    
    var xAxis: [Int] = [] 
    var yAxis: [Int] = [] 
    for d in dots {
        xAxis.append(d[0])
        yAxis.append(d[1])
    }
    
    var minX: Int = xAxis.min()!
    var maxX: Int = xAxis.max()!
    var minY: Int = yAxis.min()!
    var maxY: Int = yAxis.max()!
    
    var distanceX: Int = 0
    var distanceY: Int = 0
    if minX < 0 && maxX > 0 {
        distanceX = abs(minX) + maxX
    } 
    
    if minY < 0 && maxY > 0 {
        distanceY = abs(minY) + maxY
    }

    distanceX = maxX - minX
    distanceY = maxY - minY
    return distanceX * distanceY
}