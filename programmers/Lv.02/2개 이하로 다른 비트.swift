// 2개 이하로 다른 비트
// https://school.programmers.co.kr/learn/courses/30/lessons/77885

import Foundation

func solution(_ numbers:[Int64]) -> [Int64] {
    
    var answer = [Int64]()
    for number in numbers {
        var result: Int64 = 0
        var binary: [String] = Array(String(number, radix: 2)).map { String($0) }
        
        if binary.last! == "0" {
            result = number + 1
        } else {
            let count = binary.reversed().firstIndex(of: "0") ?? binary.count
            result = number + Int64(pow(2.0, Double(count)-1))
        }
        answer.append(result)
    }
    return answer
}