// 카펫
// https://school.programmers.co.kr/learn/courses/30/lessons/42842

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    
    let totalGrid: Int = brown + yellow
    let yellowPrimeArr = (1...yellow).filter { yellow % $0 == 0 }
    
    var result: [Int] = []
    for i in 0...(yellowPrimeArr.count/2) {
        
        let a = yellowPrimeArr[0+i] + 2
        let b = yellowPrimeArr[yellowPrimeArr.endIndex-1-i] + 2

        if (a * b) == totalGrid {
            result = [b, a]
            break
        }
    }
    return result
}
