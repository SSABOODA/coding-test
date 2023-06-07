// 대문자와 소문자
// https://school.programmers.co.kr/learn/courses/30/lessons/120893

import Foundation

func solution(_ myString:String) -> String {
    
    var result: String = ""
    for i in myString {
        var strI = String(i)
        if strI == i.lowercased() {
            result += strI.uppercased()
        } else {
            result += strI.lowercased()
        }
    }
    
    return result
}
