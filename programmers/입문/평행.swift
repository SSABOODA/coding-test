// 평행
// https://school.programmers.co.kr/learn/courses/30/lessons/120875


import Foundation

func solution(_ dots:[[Int]]) -> Int {
    
    let sortedDots = dots.sorted { $0[0] < $1[0] }
    
    let line1 = sortedDots[0]
    let line2 = sortedDots[1]
    let line3 = sortedDots[2]
    let line4 = sortedDots[3]
    
    var a1 = Double( abs(line1[1] - line2[1]) )
    var a2 = Double( abs(line1[0] - line2[0]) )
    
    var b1 = Double( abs(line3[1] - line4[1]) )
    var b2 = Double( abs(line3[0] - line4[0]) )
    
    var c1 = Double( abs(line1[1] - line3[1]) )
    var c2 = Double( abs(line1[0] - line3[0]) )
    
    var d1 = Double( abs(line2[1] - line4[1]) )
    var d2 = Double( abs(line2[0] - line4[0]) )
    
    if (a1 / a2) == (b1 / b2) {
        return 1
    }
    if (c1 / c2) == (d1 / d2) {
        return 1
    }
    return 0
}