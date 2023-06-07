// 연속된 수의 합
// https://school.programmers.co.kr/learn/courses/30/lessons/120923

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    
    var arr: [Int] = (-total...total).map {$0}
    
    if total == 0 {
        arr = (-num...num).map {$0}
    }
    
    var startIndex: Int = 0
    var endIndex: Int = num - 1
    
    var resultArr: [Int] = []
    while true {
        if arr[startIndex...endIndex].reduce(0, +) == total {
            resultArr = Array(arr[startIndex...endIndex])
            break
        }
        startIndex += 1
        endIndex += 1
    }
    return resultArr
}
