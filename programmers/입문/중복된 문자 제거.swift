// https://school.programmers.co.kr/learn/courses/30/lessons/120888

import Foundation

func solution(_ myString:String) -> String {
    var arr: [Character] = []
    for i in myString {
        if !arr.contains(i) {
            arr.append(i)
        }
    }
    return String(arr)
}