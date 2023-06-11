// 실패율
// https://school.programmers.co.kr/learn/courses/30/lessons/42889

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {

    var arrivePlayer = stages.count
    var resultDict = [Int:Double]()
    
    var countArr = Array(repeating: 0, count: N+2)
    
    for num in stages {
        countArr[num] += 1
    }
    
    for i in 1...N {
        
        if countArr[i] == 0 {
            resultDict[i] = 0.0
        } else {
            resultDict[i] = Double(countArr[i]) / Double(arrivePlayer)
            arrivePlayer -= countArr[i]
        }
    }
    
    let keySortedResultDict = resultDict.sorted { first, second in
        if first.value == second.value {
            return first.key < second.key
        }
        return first.value > second.value
    }
    return keySortedResultDict.map { $0.0 }
}