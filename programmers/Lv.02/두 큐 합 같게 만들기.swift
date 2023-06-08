// 두 큐 합 같게 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/118667

import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    
    var avg = (queue1.reduce(0, +) + queue2.reduce(0, +)) / 2
    
    var q1Sum = queue1.reduce(0, +)
    var q2Sum = queue2.reduce(0, +)
    
    var totalArr = queue1 + queue2
    
    var workCnt:Int = 0
    
    var leftOffset:Int = 0
    var rightOffset:Int = queue1.count

    if avg < queue1.max()! || avg < queue2.max()! { return -1 }
    if (q1Sum + q2Sum) % 2 != 0 { return -1 }
    
    while workCnt <= queue1.count*4 {
        
        if q1Sum < avg {
            if q1Sum == avg { return workCnt }
            q1Sum += totalArr[rightOffset]
            workCnt += 1
            rightOffset += 1
            if rightOffset > totalArr.endIndex-1 { rightOffset = 0 }
            
        } else {
            if q1Sum == avg { return workCnt }
            q1Sum -= totalArr[leftOffset]
            workCnt += 1
            leftOffset += 1
            if leftOffset > totalArr.endIndex-1 { leftOffset = 0 }
        }
        
    }
    return -1
}