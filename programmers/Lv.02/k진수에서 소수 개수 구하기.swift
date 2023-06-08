// k진수에서 소수 개수 구하기
// https://school.programmers.co.kr/learn/courses/30/lessons/92335

import Foundation

func isPrime(_ num: Int) -> Bool {
    if num < 4 {
        return num == 1 ? false : true
    }
    
    for i in 2...Int(sqrt(Double(num))) {
        if (num % i == 0) {
            return false
        }
    }
    return true
}

func solution(_ n:Int, _ k:Int) -> Int {
    
    let answer = String(n, radix: k).components(separatedBy: "0").filter { $0 != "1" }.map { Int($0) }.compactMap { $0 }.filter { isPrime($0) == true }
    return answer.count
}