// 올바른 괄호
// https://school.programmers.co.kr/learn/courses/30/lessons/12909

import Foundation

func solution(_ s:String) -> Bool {
    
    var newArr: [String] = []
    for value in s {
        newArr.append(String(value))
        if newArr.count > 1 {
            let checkStr = newArr[newArr.endIndex-2] + newArr[newArr.endIndex-1]
            if checkStr == "()" {
                newArr.popLast()
                newArr.popLast()
            }
        }
    }
    return newArr.isEmpty ? true : false
}
