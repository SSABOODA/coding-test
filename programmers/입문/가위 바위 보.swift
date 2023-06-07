// https://school.programmers.co.kr/learn/courses/30/lessons/120839

import Foundation

func solution(_ rsp:String) -> String {
    // 바위: 0 r
    // 가위: 2 s
    // 보: 5 p

    var result: String = ""
    for i in rsp {
        if i == "0" {
            result += "5"
        } else if i == "2" {
            result += "0"
        } else {
            result += "2"
        }
    }
    return result 
}
