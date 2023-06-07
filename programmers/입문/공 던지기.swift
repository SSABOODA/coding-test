// https://school.programmers.co.kr/learn/courses/30/lessons/120843

import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {

    var totalArray:[Int] = []
    
    if numbers.count % 2 == 0 {
        totalArray = numbers.filter {$0 % 2 != 0}
        
        if k % totalArray.count == 0 {
            return totalArray[totalArray.count - 1]
        } else {
            return k < totalArray.count ? totalArray[k - 1] : totalArray[(k % totalArray.count) - 1]
        }

        
    } else {
        numbers.filter {$0 % 2 != 0}.map {totalArray.append($0)}
        numbers.filter {$0 % 2 == 0}.map {totalArray.append($0)}
        
        if k % totalArray.count == 0 {
            return totalArray[totalArray.count - 1]
        } else {
            return k < totalArray.count ? totalArray[k - 1] : totalArray[(k % totalArray.count) - 1]
        }
    }
}