// 신고 결과 받기
// https://school.programmers.co.kr/learn/courses/30/lessons/92334

import Foundation

func solution(_ idList:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var userDict = Dictionary<String,[String]>()
    idList.map { userDict[$0] = [] }
    
    var reportedCountDict = Dictionary<String,Int>()
    idList.map { reportedCountDict[$0] = 0 }
    
    for j in report {
        let reportArr = j.split(separator: " ")
        
        let reporter = String(reportArr[0])
        let reported = String(reportArr[1])
        
        if !userDict[reporter]!.contains(reported) {
            userDict[reporter]!.append(reported)
            reportedCountDict[reported]! += 1
        }
    }    
    
    var result: [Int] = []
    for id in idList {
        let reportUser = userDict[id]!    
        var stopIdList: [String] = []
    
        for user in reportUser {
            if reportedCountDict[user]! >= k {
                stopIdList.append(user)
            }
        }
        result.append(stopIdList.count)
    }
    return result
}