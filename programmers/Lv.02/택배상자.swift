// 택배상자
// https://school.programmers.co.kr/learn/courses/30/lessons/131704

import Foundation

func solution(_ order:[Int]) -> Int {
    var order = order
    var main = [Int]()
    var assist = [Int]()
    var truck = [Int]()
    
    var idx: Int = 0
    for i in 1...order.count {
        assist.append(i)
        while true {
     
            if assist.isEmpty { break }
            if assist[assist.endIndex-1] == order[idx] {
                truck.append(order[idx])
                assist.popLast()
            } else { break }
            idx += 1
        }
    }
    return truck.count
}
