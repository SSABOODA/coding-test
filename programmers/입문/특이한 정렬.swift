// 특이한 정렬
// https://school.programmers.co.kr/learn/courses/30/lessons/120880

import Foundation

func solution(_ numList:[Int], _ n:Int) -> [Int] {
    
    var numList: [Int] = numList
    var distanceArr: [Int] = numList.map { abs($0 - n) }.sorted()
    
    var resultArr: [Int] = []

    var i: Int = 0
    
    for d in distanceArr {
        if i == d {
            if numList.contains(abs(d - n)) {
                resultArr.append(abs(d - n))
            } else {
                resultArr.append(abs(d + n))
            }
            
        } else {
            if numList.contains(abs(d + n)) {
                resultArr.append(d + n)
            } else {
                resultArr.append(abs(d - n))
            }
            
        }
        i = d
    }
    
    return resultArr
}
