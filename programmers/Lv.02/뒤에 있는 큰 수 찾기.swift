// 뒤에 있는 큰 수 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/154539

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    let arrCount = numbers.count
    var result = [Int](repeating: -1, count: arrCount)
    var stack = [Int]()
    
    for i in 0..<arrCount {
        while !stack.isEmpty && numbers[stack.last!] < numbers[i] {
            result[stack.popLast()!] = numbers[i]
        }
        stack.append(i)
    }
    return result
}
