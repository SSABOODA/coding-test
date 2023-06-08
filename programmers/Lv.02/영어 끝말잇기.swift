// 영어 끝말잇기
// https://school.programmers.co.kr/learn/courses/30/lessons/12981

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var result: [Int] = []
    var checkWordArr: [String] = []
    for (idx, word) in words.enumerated() {
        if !checkWordArr.isEmpty {
            if checkWordArr.contains(word) || (checkWordArr.last!.last! != word.first!) {
                return [(idx+1) % n == 0 ? n : (idx+1) % n, ((idx) / n) + 1]
            }
        }   
        checkWordArr.append(word)
    }
    return [0, 0]
}
