// 신규 아이디 추천
// https://school.programmers.co.kr/learn/courses/30/lessons/72410

import Foundation

func solution(_ newId:String) -> String {
    let specialString: [String] = ["~", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "=", "+", "[", "{", "]", "}", ":", "?", ",", "<", ">", "/"]
    
    let first = newId.map { $0.lowercased() }
    let second = first.filter { !specialString.contains($0)}
    var third: [String] = []
    
    for i in second {
        if i == "." {
            if third.last == i {
                continue
            }
        }
        third.append(i)
    }

    var result: [String] = third    
    while true {
        if result.first == "." {
            result.removeFirst()
        }
        if result.last == "." {
            result.popLast()
        }
        
        if result.count >= 16 {
            result = result[0...14].map {$0}
        }
        
        if result.count < 16 {
            if result.first != "." && result.last != "." {
                break
            }
        }
    }
    
    if result.isEmpty {
        result = ["a"]
    }
    
    var answer: [String] = result
    while answer.count < 3 {
        answer.append(result.last!)
    }
    
    return answer.joined()
}