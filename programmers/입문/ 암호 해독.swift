// 암호 해독
// https://school.programmers.co.kr/learn/courses/30/lessons/120892

import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    
    var resultArray: [String] = []
    var idx = code - 1
    for _ in 1...(cipher.count / code) {
        resultArray.append(String(Array(cipher)[idx]))
        idx += code
    }
    return resultArray.joined()   
}
