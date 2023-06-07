// 문자열 계산하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120902

import Foundation

func solution(_ myString:String) -> Int {
    var newArr: [String] = myString.split(separator: " ").map {String($0)}
    
    var calSign: String = "+"
    var result: Int = 0
    for i in newArr {
        if Int(String(i)) == nil {
            calSign = String(i)
        } else {
            calSign == "+" ? (result += Int(String(i))!) : (result -= Int(String(i))!)
        }
    }
    return result
}
