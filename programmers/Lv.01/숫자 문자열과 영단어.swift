// 숫자 문자열과 영단어
// https://school.programmers.co.kr/learn/courses/30/lessons/81301

import Foundation

func solution(_ s:String) -> Int {
    let numberDict: Dictionary<String, Int> = [
        "zero": 0,
        "one": 1,
        "two": 2,
        "three": 3,
        "four": 4,
        "five": 5,
        "six": 6,
        "seven": 7,
        "eight": 8,
        "nine": 9
    ]
    
    var result: String = ""
    var str: String = ""
    for i in s {
        
        if Int(String(i)) == nil {
            str += String(i)
            if numberDict[str] != nil {
                result += String(numberDict[str]!)
                str = ""
            }
        } else {
            result += String(i)
        }
        
    }
    return Int(result)!
}
