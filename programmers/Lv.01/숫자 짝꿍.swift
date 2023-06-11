// 숫자 짝꿍
// https://school.programmers.co.kr/learn/courses/30/lessons/131128

import Foundation


func solution(_ X:String, _ Y:String) -> String {
    
    var x = Array(repeating: 0, count: 10)
    var y = Array(repeating: 0, count: 10)
    
    var xArr: [Int] = X.map { Int(String($0))! }
    var yArr: [Int] = Y.map { Int(String($0))! }

    for i in xArr {
        x[i] += 1
    }
    
    for i in yArr {
        y[i] += 1
    }

    var result = ""
    for (a, b) in zip(x, y).enumerated() {
        if b.0 == 0 || b.1 == 0 {
            continue
        } else {
            if (b.0 >= b.1) {
                result += String(repeating: "\(a)", count: b.1)
            } else {
                result += String(repeating: "\(a)", count: b.0)
            }
        }
    }
    
    let sortedResult = result.sorted(by: >)
    
    if result.isEmpty {
        return "-1"
    } else {
        return sortedResult[sortedResult.startIndex] == "0" ? "0" : sortedResult.map {String($0)}.joined()
    }
    
}
