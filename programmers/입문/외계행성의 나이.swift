// https://school.programmers.co.kr/learn/courses/30/lessons/120834

import Foundation

func solution(_ age:Int) -> String {
    var ageTuple = [
        "0": "a",
        "1": "b",
        "2": "c",
        "3": "d",
        "4": "e",
        "5": "f",
        "6": "g",
        "7": "h",
        "8": "i",
        "9": "j"
    ]       
    
    var a = String(age).map {$0}
    var result = ""
    for i in a {
        var s = String(i)
        result += ageTuple[s]!
    }
    return result
}
