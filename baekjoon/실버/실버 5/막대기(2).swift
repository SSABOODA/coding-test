// https://www.acmicpc.net/problem/1094

import Foundation

let n = Int(readLine()!)!

func solution(n: Int) -> Int {
    
    let n = n
    var stickLength: Int = 64
    var remain = n
    var totalNum: Int = 0
    var stickArray: [Int] = [0]

    while true {
        if stickLength < 2 || totalNum == n {
            break
        }
        
        if n == 64 {
            stickArray.append(64)
            break
        }
        
        stickLength /= 2
        
        if remain < stickLength {
            continue
        }
        
        if stickLength + stickArray.last! > n {
            continue
        }
        
        stickArray.append(stickLength)
        totalNum += stickLength
        remain -= stickLength
    }
    
    return stickArray.count - 1
}

print(solution(n: n))
