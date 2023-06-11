// 대충 만든 자판
// https://school.programmers.co.kr/learn/courses/30/lessons/160586

import Foundation

func getKeyIndex(_ keymap: [String], _ word: Character) -> Int {
    let minNum = keymap.map { Array($0).firstIndex(of: word) }.compactMap { $0 }
    return minNum.isEmpty ? -1 : (minNum.min()! + 1)
}

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    
    var result: [Int] = []
    for word in targets {
        var cnt: Int = 0
        for i in word {
            
            let minNum = getKeyIndex(keymap, i)
            
            if minNum == -1 {
                cnt = 0
                cnt += minNum
                break
            }
            
            cnt += minNum
        }
        result.append(cnt)
    }
    return result
}
