// 카드 뭉치
// https://school.programmers.co.kr/learn/courses/30/lessons/159994

import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    var cards1: [String] = cards1
    var cards2: [String] = cards2
    
    var goal: [String] = goal
    
    for word in goal {
        
        if cards1.isEmpty {
            if cards2[0] == word {
                cards2.remove(at: 0)
                goal.remove(at: 0)
                continue
            }
        } else {
            if cards1[0] == word {
                cards1.remove(at: 0)
                goal.remove(at: 0)
                continue
            }
        }
        
        if cards2.isEmpty {
            if cards1[0] == word {
                cards1.remove(at: 0)
                goal.remove(at: 0)
                continue
            }
        } else {
            if cards2[0] == word {
                cards2.remove(at: 0)
                goal.remove(at: 0)
                continue
            }
        }
    }

    return goal.isEmpty ? "Yes" : "No"
}