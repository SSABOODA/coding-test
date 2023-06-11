// 과일 장수
// https://school.programmers.co.kr/learn/courses/30/lessons/135808

import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    
    var score = score.sorted(by: >)
    var appleBox: [[Int]] = []
    var appleSet: [Int] = []
    
    for s in score {
        appleSet.append(s)
        if appleSet.count == m {
            appleBox.append(appleSet)
            appleSet = []
        }
        
    }
    
    var totalPrice: Int = 0
    for box in appleBox {
        totalPrice += (box.min()! * m)
    }
    
    return totalPrice
}