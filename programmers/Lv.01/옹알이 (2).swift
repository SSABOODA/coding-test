// 옹알이 (2)
// https://school.programmers.co.kr/learn/courses/30/lessons/133499

import Foundation

func solution(_ babbling:[String]) -> Int {
    let babblingArr: [String] = ["aya", "ye", "woo", "ma"]
    
    var answer: Int = 0
    
    var tempSuccess: [String] = []
    for babble in babbling {
        var tempBabble: String = ""
        for i in babble {
            tempBabble += String(i)
            if babblingArr.contains(tempBabble) {
                
                if tempSuccess.last != tempBabble {
                    tempSuccess.append(tempBabble)
                    tempBabble = ""
                }
            }
        }
        
        if tempSuccess.joined().count == babble.count {
            answer += 1
        }
        tempSuccess = []
    }
    return answer
}