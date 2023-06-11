// 크기가 작은 부분문자열
// https://school.programmers.co.kr/learn/courses/30/lessons/147355

import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let repeatCount = t.count - p.count + 1
    var tRange: Int = p.count - 1
    
    var resultArr = (0..<repeatCount).map { i in
        return Array(String(t))[i...(i + tRange)]
    }
    
    var result = resultArr.map { $0.map {String($0)} }.map { $0.joined() }
    return result.filter { Int($0)! <= Int(p)! }.count

}
