// 귤 고르기
// https://school.programmers.co.kr/learn/courses/30/lessons/138476

import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    
    var tangerineDict = Dictionary<Int, Int>()
    
    let sortedArr = tangerine.sorted()
    for i in sortedArr {
        if tangerineDict[i] == nil {
            tangerineDict[i] = 1
        } else {
            tangerineDict[i]! += 1
        }
    }
    
    let sortedDict = tangerineDict.sorted { $0.value > $1.value }
    
    var result: Int = 0
    var checkNum: Int = 0
    for (key, value) in sortedDict {
        checkNum += value
        result += 1
        if checkNum >= k {
            break
        }
    }
    return result
}
