// https://school.programmers.co.kr/learn/courses/30/lessons/120853

import Foundation

func solution(_ s:String) -> Int {
    
    // "10 20 30 40"
    
    var result: Int = 0
    var beforeI: Int = 0
    var str = s.split(separator: " ")
    for i in  str {
        
        if i != "Z" {
            result += Int(String(i))!
            beforeI = Int(String(i))!
        } else {
            result -= beforeI
            beforeI = 0
        }
    }
    return result
}
