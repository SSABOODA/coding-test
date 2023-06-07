// OX퀴즈
// https://school.programmers.co.kr/learn/courses/30/lessons/120907

import Foundation

func solution(_ quiz:[String]) -> [String] {
    var finalResult: [String] = []
    for i in quiz {
        var arr = String(i).components(separatedBy: " ")
        let result = arr.suffix(1).joined()
        
        var a = arr[0...arr.endIndex - 3]

        var answer: Int = 0
        var plus: String = "+"
        for j in 0..<a.count {
            
            if Int(a[j]) != nil {
                if plus == "+" {
                    answer += Int(a[j])!
                } else {
                    answer -= Int(a[j])!
                }
            } else {
                if a[j] == "+" {
                    plus = "+"
                } else {
                    plus = "-"
                }
            }
        }
        answer == Int(result) ? finalResult.append("O") : finalResult.append("X")
        
    }
    return finalResult
}
