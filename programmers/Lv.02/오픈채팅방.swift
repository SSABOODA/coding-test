// 오픈채팅방
// https://school.programmers.co.kr/learn/courses/30/lessons/42888

import Foundation

func solution(_ record:[String]) -> [String] {
    var userInfo = Dictionary<String, String>()
    for i in record {
        let comingInAndOut = i.components(separatedBy: " ")
        
        if comingInAndOut[0] != "Leave" {
            userInfo[comingInAndOut[1]] = ""
            userInfo[comingInAndOut[1]] = comingInAndOut[2]
        }
    }
    var result: [String] = []
    for j in record {
        let comingInAndOut = j.components(separatedBy: " ")
        
        if comingInAndOut[0] == "Enter" {
            result.append("\(userInfo[comingInAndOut[1]]!)님이 들어왔습니다.")
        } else if comingInAndOut[0] == "Leave" {
            result.append("\(userInfo[comingInAndOut[1]]!)님이 나갔습니다.")
        }
    }    
    return result
}
