// 롤케이크 자르기
// https://school.programmers.co.kr/learn/courses/30/lessons/132265

import Foundation

func solution(_ topping:[Int]) -> Int {    
    var a = topping
    var b = Set<Int>()
    
    var cakeCnt = Dictionary<Int, Int>()
    a.map { (cakeCnt[$0] == nil) ? (cakeCnt[$0] = 1) : (cakeCnt[$0]! += 1) }
    
    var result: Int = 0
    for _ in 0..<topping.count {
        let topping = a.popLast()!
        b.insert(topping)
        
        cakeCnt[topping]! -= 1
        
        if cakeCnt[topping]! == 0 {
            cakeCnt.removeValue(forKey: topping)
        }
        
        if cakeCnt.count == b.count { result += 1 }
    }
    return result
}
