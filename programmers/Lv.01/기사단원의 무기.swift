// 기사단원의 무기
// https://school.programmers.co.kr/learn/courses/30/lessons/136798

import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    
    var primeCount: [Int] = []
    for n in 1...number {
        
        if n == 1 {
            primeCount.append(1)
            continue
        }
        
        var i = 1
        var primeNum: Int = 0
        while i*i <= n {
            if (n % i == 0) {
                if (i*i == n) {
                    primeNum += 1
                } else {
                    primeNum += 2
                }
            }
            i += 1
        }
        
        
        if primeNum > limit {
            primeCount.append(power)
        } else {
            primeCount.append(primeNum)
        }
        
    }
    
    return primeCount.reduce(0, +)
}