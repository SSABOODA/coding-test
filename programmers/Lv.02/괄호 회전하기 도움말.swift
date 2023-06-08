// 괄호 회전하기
// https://school.programmers.co.kr/learn/courses/30/lessons/76502

import Foundation

func solution(_ s:String) -> Int {

    var s: [String] = s.map {String($0)}
    
    var result: Int = 0
    
    for _ in 0..<s.count {
        
        var tempS = s.joined()
        
        while tempS.count > 1 {
            tempS = tempS.replacingOccurrences(of: "[]", with: "")
            tempS = tempS.replacingOccurrences(of: "{}", with: "")
            tempS = tempS.replacingOccurrences(of: "()", with: "")
            
            if tempS.count == s.count { break }
            
            let fBracket = tempS.first
            let lBracket = tempS.last
            
            if fBracket != nil && lBracket != nil {
                if (fBracket == "]") || (fBracket == "}") || (fBracket == ")") { break }
                if (lBracket == "[") || (lBracket == "{") || (lBracket == "(") { break }
            }
         }
        
        if tempS.count == 0 {
            result += 1
        }
        
        let removeFirstStr = s.removeFirst()
        s.append(removeFirstStr)
    }
    return result
}
