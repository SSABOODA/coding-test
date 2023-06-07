// https://school.programmers.co.kr/learn/courses/30/lessons/120842

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    
    var result:[[Int]] = []
    
    var startN:Int = 0
    var loopN:Int = startN + (n-1)
    
    while true {
        if num_list.count <= loopN {
            break
        } 
                
        result.append(Array(num_list[startN...loopN]))
        startN += n
        loopN += n
    }
    
    return result
}