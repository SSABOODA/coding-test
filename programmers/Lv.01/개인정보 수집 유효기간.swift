// 개인정보 수집 유효기간
// https://school.programmers.co.kr/learn/courses/30/lessons/150370

import Foundation

func convertDate(_ date: String) -> Int {

    let date = date.components(separatedBy: ".")
    
    var dateCount: Int = 0
    for (i, v) in date.enumerated() {
        if i == 0 {
           let year = Int(v)! - 2000
            dateCount += year * 12 * 28
        } else if i == 1 {
            dateCount += Int(v)! * 28
        } else {
            dateCount += Int(v)!
        }
    }
    return dateCount
}

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    var termDict: Dictionary<String, String> = [:]
    terms.forEach { t in
        let term = t.components(separatedBy: " ")
        termDict[term[0]] = term[1]
    }
    
    
    var result: [Int] = []
    for (i, v) in privacies.enumerated() {
        let privacyDate = v.components(separatedBy: " ")[0]
        let privacyTerm = v.components(separatedBy: " ")[1]

        let dateCount = convertDate(privacyDate) + ( Int(termDict[privacyTerm]!)! * 28 ) - 1
        let todayCount = convertDate(today)
        
        print(dateCount, todayCount)
        
        if dateCount < todayCount {
            result.append(i + 1)
        }
    }
    return result
}