// 잘라서 배열로 저장하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120913

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    
    var newStr: [String] = my_str.map {String($0)}
    var resultArray: [String] = []
    
    while true {
        if newStr.count < n {
            if newStr.count == 0 {
                break
            }
            resultArray.append(newStr.joined())
            break
        } 
        resultArray.append(newStr[0...n - 1].joined())
        newStr.removeSubrange(0...n - 1)
    }
    
    return resultArray
}
