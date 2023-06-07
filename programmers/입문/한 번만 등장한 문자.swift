// 한 번만 등장한 문자
// https://school.programmers.co.kr/learn/courses/30/lessons/120896

import Foundation

func solution(_ s:String) -> String {
    
    var s = s
    var result: [String] = []
    
    for i in Set(s) {
        var cnt = s.filter { $0 == i }.count
        if  cnt == 1 {
            result.append(String(i))
        }
    }
    return result.sorted().joined()
}
