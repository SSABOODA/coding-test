// 가장 가까운 같은 글자
// https://school.programmers.co.kr/learn/courses/30/lessons/142086

import Foundation

func solution(_ s:String) -> [Int] {
    
    var sArr: [String] = []
    var result: [Int] = []
    for i in s {
        if !sArr.contains(String(i)) {
            result.append(-1)
            sArr.append(String(i))
        } else {
            let lastIdx = sArr.lastIndex(of: String(i))!
            sArr.append(String(i))
            let endIdx = sArr.endIndex - 1
            result.append(endIdx - lastIdx)
        }
    }
    return result
}
