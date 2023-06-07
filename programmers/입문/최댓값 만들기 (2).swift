//최댓값 만들기 (2)
//https://school.programmers.co.kr/learn/courses/30/lessons/120862

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sortedNumbers = numbers.sorted()
    
    let s = sortedNumbers[0...1].reduce(1) {$0 * $1}
    let e = sortedNumbers[sortedNumbers.endIndex - 2 ... sortedNumbers.endIndex - 1].reduce(1) {$0 * $1}
    return s > e ? s : e    
}
