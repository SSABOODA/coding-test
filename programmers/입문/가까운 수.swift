// https://school.programmers.co.kr/learn/courses/30/lessons/120890

import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {    
    var distanceArray = array.map { $0 < n ? n - $0 : $0 - n }
    var bestNearNumber = distanceArray.sorted()[0]
    
    return array.filter {$0 - n == bestNearNumber || $0 - n == bestNearNumber * -1}.sorted()[0]
}
