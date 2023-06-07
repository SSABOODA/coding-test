// 영어가 싫어요
// https://school.programmers.co.kr/learn/courses/30/lessons/120894

import Foundation

func solution(_ numbers:String) -> Int64 {
    
    let matchArr: [String: Int] = [
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
    var matchStr: String = ""
    for i in numbers {
        matchStr += String(i)
        if matchArr[matchStr] != nil {
            result += String(matchArr[matchStr]!)
            matchStr = ""
            continue
        }
    }
    
    return Int64(result)!
}