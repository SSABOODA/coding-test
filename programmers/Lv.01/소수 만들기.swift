// 소수 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12977

import Foundation

func isPrime(_ number: Int) -> Bool {
    
    var primeCount: Int = 0
    for i in 2...number {
        if number % i == 0 {
            primeCount += 1
        }
    }
    return primeCount == 1 ? true : false
}

func solution(_ nums:[Int]) -> Int {
    var result: Int = 0
    let maxRange: Int = nums.count
    for i in 0..<maxRange {
        for j in i+1..<maxRange {
            for k in j+1..<maxRange {
                let total = nums[i] + nums[j] + nums[k]
                isPrime(total) == true ? (result += 1) : (result += 0)
                
            }
        }
    }
    return result
}
