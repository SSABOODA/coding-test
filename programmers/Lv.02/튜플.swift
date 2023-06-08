// 튜플
// https://school.programmers.co.kr/learn/courses/30/lessons/64065

import Foundation

func solution(_ s:String) -> [Int] {
    
    var convertArr: [[Int]] = []
    var perTuple: [Int] = []
    
    var checkInt: String = ""
    for i in s {
        if i.isNumber {
            checkInt += String(i)
        } else {
            if checkInt.isEmpty { continue }
            perTuple.append(Int(checkInt)!)
            checkInt = ""
        }
        if String(i) == "}" {
            if !perTuple.isEmpty {
                convertArr.append(perTuple)
            }
            perTuple = []
        }
    }
    
    let sortedArr = convertArr.sorted { $0.count < $1.count }
    
    var result: [Int] = []
    for elementArr in sortedArr {
        for j in elementArr {
            if !result.contains(j) {
                result.append(j)
            }
        }
    }
    return result    
}
