// 숨어있는 숫자의 덧셈 (2)
// https://school.programmers.co.kr/learn/courses/30/lessons/120864

import Foundation

func solution(_ myString:String) -> Int {
    
    var result: Int = 0
    var numStr: String = "0"
    for i in myString {
        
        if i.isNumber {
            numStr += String(i)
        } else {
            result += Int(numStr)!
            numStr = "0"
        }
    }
    result += Int(numStr)!
    return result
}
