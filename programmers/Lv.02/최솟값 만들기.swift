// 최솟값 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12941

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    var ans = 0
    let aArr: [Int] = A.sorted(by: <)
    let bArr: [Int] = B.sorted(by: >)
    
    for (a, b) in zip(aArr, bArr) {
        ans += a * b
    }
    return ans
}