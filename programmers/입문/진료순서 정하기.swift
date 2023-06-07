// https://school.programmers.co.kr/learn/courses/30/lessons/120835

import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    
    var orderArray: [Int:Int] = [:]
    var num:Int = 1
    
    for j in emergency.sorted().reversed() {
        orderArray[j] = num
        num += 1
    }
    
    return emergency.map {orderArray[$0]!}
}