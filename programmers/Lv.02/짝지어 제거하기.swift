// 짝지어 제거하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12973

import Foundation

func solution(_ s:String) -> Int {
    var newArr: [String] = []
    for i in s {
        
        if newArr.isEmpty {
            newArr.append(String(i))
        } else {
            if newArr.last! == String(i) {
                newArr.popLast()
            } else {
                newArr.append(String(i))    
            }    
        }
    }
    return newArr.isEmpty ? 1 : 0
}
