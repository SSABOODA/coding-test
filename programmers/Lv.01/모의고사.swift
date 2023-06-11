// 모의고사
// https://school.programmers.co.kr/learn/courses/30/lessons/42840

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    let a: [Int] = [1, 2, 3, 4, 5]
    let b: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    let c: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var aArr: [Int] = a
    var bArr: [Int] = b
    var cArr: [Int] = c
    
    if answers.count > a.count {
        let repeatCount: Int = answers.count / a.count
        aArr = Array(repeatElement(a, count: repeatCount + 1)).flatMap { $0 }
    }
    if answers.count > b.count {
        let repeatCount: Int = answers.count / b.count
        bArr = Array(repeatElement(b, count: repeatCount + 1)).flatMap { $0 }
    }
    if answers.count > c.count {
        let repeatCount: Int = answers.count / c.count
        cArr = Array(repeatElement(c, count: repeatCount + 1)).flatMap { $0 }
    }

    var aCount: Int = 0
    var bCount: Int = 0
    var cCount: Int = 0
    
    for (i, v) in answers.enumerated() {
        if v == aArr[i] {
            aCount += 1
        }
        if v == bArr[i] {
            bCount += 1
        }
        if v == cArr[i] {
            cCount += 1
        }
    }

    
    let scoreArr = [aCount, bCount, cCount]
    var scoreDict: Dictionary<Int, Int> = [:]
    scoreDict[1] = aCount
    scoreDict[2] = bCount
    scoreDict[3] = cCount
    
    let sortedDict = scoreDict.sorted { $0.value > $1.value }
    
    var result: [Int] = []
    var compareValue = 0
    for (i, v) in sortedDict.enumerated() {
        
        if i == 0 {
            result.append(v.key)
            compareValue = v.value
            continue
        } else {
            if compareValue == v.value {
                result.append(v.key)
            } else {
                break
            }
        }
    }
    return result.sorted(by: <)
}