// 예상 대진표
// https://school.programmers.co.kr/learn/courses/30/lessons/12985

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var n = n
    var a = a
    var b = b
    
    var nCount: Int = 0
    while true {
        if n == 1 { break }
        n /= 2
        nCount += 1
    }
    
    var aNextNumber: Int = a
    var bNextNumber: Int = b
    var result: Int = 0
    
    for i in 1...nCount {
        if abs(aNextNumber - bNextNumber) == 1 {
            let checkA = (aNextNumber % 2 == 0) ? (aNextNumber/2) : (aNextNumber+1)/2
            let checkB = (bNextNumber % 2 == 0) ? (bNextNumber/2) : (bNextNumber+1)/2
            
            if checkA == checkB {
                result = i
                break
            }
        }
        
        aNextNumber = (aNextNumber % 2 == 0) ? (aNextNumber/2) : (aNextNumber+1)/2
        bNextNumber = (bNextNumber % 2 == 0) ? (bNextNumber/2) : (bNextNumber+1)/2
    }
    return result
}
