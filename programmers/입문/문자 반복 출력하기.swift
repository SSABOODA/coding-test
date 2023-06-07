// https://school.programmers.co.kr/learn/courses/30/lessons/120825

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    
    var result = ""
    for s in my_string {
        for _ in 1...n {
            result += String(s)
        }    
    }
    return result
}