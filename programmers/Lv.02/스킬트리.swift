// 스킬트리
// https://school.programmers.co.kr/learn/courses/30/lessons/49993

import Foundation

func solution(_ skill:String, _ skillTrees:[String]) -> Int {
    
    var skillArr = Array(skill)
    var result: [Bool] = []
    for skill in skillTrees {
        let s = Array(skill)
        var idxArr: [Int] = []
        for i in s {
            if skillArr.contains(i) {
                idxArr.append(skillArr.firstIndex(of: i)!)
            }
        }
        
        for i in 0..<idxArr.count {
            if i == 0 {
                if idxArr[i] != 0 {
                    result.append(false)
                    break
                }
            }
            
            if i+1 >= idxArr.count { break }
            if (idxArr[i] + 1) != idxArr[i+1] {
                result.append(false)
                break
            }
        }
    }
    return skillTrees.count - result.count
}
