// 소수 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/42839

import Foundation

func permutation(_ target: [String], _ targetNum: Int) -> [[String]]{
    
    var result: [[String]] = []
    // 사용된 원소인지 확인하기 위한 변수
    var check = [Bool](repeating: false, count: target.count)
    
    // 위의 변수들을 이용하기 위해 안에 연산만 하는 함수 구현
    func permute(_ arr: [String]) {
        if arr.count == targetNum {
            result.append(arr)
            return
        }
        for i in 0..<target.count {
            // 이미 사용된 원소인지 확인
            if check[i] == true {
                continue
            } else {
                check[i] = true
                permute(arr + [target[i]])
                check[i] = false
            }
        }
    }
    permute([])
    return result
}

func primeNumberCheck(_ num: Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 { return false }
    }
    return true
}


func solution(_ numbers:String) -> Int {
    
    let arr = numbers.map { String($0) }
    var result: Int = 0
    
    var checkPrimeArr = [Int]()
    for i in 1...arr.count {
        var checkPrimeNumer = permutation(arr, i).map { $0.joined() }.map { Int($0)! }
        checkPrimeArr += checkPrimeNumer
    }
    
    for num in Set(checkPrimeArr) {
        if (num != 1) && (num != 0) {
            if primeNumberCheck(num) {
                result += 1
            }
        }
    }
    return result
}