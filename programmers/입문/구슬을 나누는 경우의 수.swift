// https://school.programmers.co.kr/learn/courses/30/lessons/120840

import Foundation

func factorial(_ num: Int) -> Int {
    if num <= 1 { return 1 }
    
    return num * factorial(num - 1)
}

func solution(_ balls:Int, _ share:Int) -> Int64 {
    guard balls != 0 else { return 0 }
    guard share != 0 else { return 0 }
    guard balls != share else { return 1 }
    
    var n = balls
    var m = share
    
    var top: [Int] = (1...n).map { $0 }
    var bottomLeft: [Int] = (1...(n - m)).map { $0 }
    var bottomRight: [Int] = (1...m).map { $0 }
    
    var newTop: [Int] = top.filter { !bottomRight.contains($0)}
    var resultTop: [Int] = newTop.filter { !bottomLeft.contains($0) }
    var resultBottom: [Int] = bottomLeft.filter { !newTop.contains($0) }
    
    var result: Double = 1.0
    for i in 0...(resultTop.count - 1) {
        result *= Double(resultTop[i]) / Double(resultBottom[i])
    }
    
    return Int64(round(result))
}
