// [1차] 다트 게임
// https://school.programmers.co.kr/learn/courses/30/lessons/17682

import Foundation

func solution(_ dartResult:String) -> Int {
    
    let indicatorDict: Dictionary<String, Double> = [
        "S": 1.0,
        "D": 2.0,
        "T": 3.0
    ]
    
    var answer: [Int] = []
    var dart: String = ""
    for i in dartResult {
        
        if String(i) == "*" {
            
            if answer.count > 1 {
                answer[answer.endIndex - 1] *= 2
                answer[answer.endIndex - 2] *= 2
            } else {
                answer[answer.endIndex - 1] *= 2
            }
            continue
        } else if String(i) == "#" {
            answer[answer.endIndex - 1] *= -1
            continue
        }
        
        dart += String(i)
        
        if "SDT".contains(dart.last!) {
            var score: Double = 0.0
            if dart.count > 2 {
                score = Double(String(dart.prefix(2)))!
            } else {
                score = Double(String(dart.first!))!
            }
            
            let indicator = indicatorDict[String(dart.last!)]!
            
            var newSocre = Int(pow(score, indicator))
            answer.append(newSocre)
            dart = ""
            
            continue
        }
    }
    return answer.reduce(0, +)
}
