// 다음 큰 숫자
// https://school.programmers.co.kr/learn/courses/30/lessons/12911

import Foundation

func solution(_ n:Int) -> Int {
    let binaryNum1 = String(n, radix: 2)
    let oneCount1 = binaryNum1.filter { $0 == "1" }.count
    
    var result: Int = n
    while result <= 1_000_000 {
        result += 1
        var binaryNum2 = String(result, radix: 2)
        let oneCount2 = binaryNum2.filter { $0 == "1" }.count
        
        if oneCount1 == oneCount2 { break }
    }
    return result
}
