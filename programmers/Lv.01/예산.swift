// 예산
// https://school.programmers.co.kr/learn/courses/30/lessons/12982

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    var sortedArr: [Int] = d.sorted()
    var amount: Int = 0
    var result: Int = 0
    
    for i in 1...(d.count) {
        amount += sortedArr[i-1]
        
        if amount > budget {
            result = i - 1
            break
        } else if amount == budget {
            result = i
            break
        }
    }
    return amount >= budget ? result : d.count
}
