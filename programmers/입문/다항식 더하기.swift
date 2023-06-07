//다항식 더하기
//https://school.programmers.co.kr/learn/courses/30/lessons/120863

import Foundation

func solution(_ polynomial:String) -> String {
    var p = polynomial
    
    var x = p.split(separator: " ").filter { $0.contains("x") }
    var n = p.split(separator: " ").filter { !$0.contains("x") }
                                    .filter { Int($0) != nil }
                                    .map { Int($0)! }
                                    .reduce(0, +)
        
    var xNum: Int = 0
    var xArr: [String] = []
    for i in x {
        if String(i).count == 1 {
            xNum += 1
        } else {
            xArr = i.map { String($0) }
            xArr.popLast()
            xNum += Int(xArr.joined())!
            
        }
    }
    
    var result: [String] = []
    
    if xNum != 0 {
        if xNum == 1 {
            result.append("x")
        } else {
            result.append("\(xNum)x")
        }
        
    }
    
    if result.count == 0 && n == 0 {
        return "0"
    }
    
    if n != 0 {
        if xNum != 0 {
            result.append(" ")
            result.append("+")
            result.append(" ")
            result.append(String(n))
        } else {
            result.append(String(n))
        }   
    }    
    return result.joined()
}