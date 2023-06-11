// 순위 검색
// https://school.programmers.co.kr/learn/courses/30/lessons/72412

import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {

    let infoArr:[[String]] = info.map { $0.components(separatedBy: " ") }
    let queryArr:[[String]] = query.map { $0.components(separatedBy: " and ")
                                         .joined(separator: " ")
                                         .components(separatedBy: " ")
                                         .filter { $0 != "-" }
                                        }

    var dict = Dictionary<String, [Int]>()

    for info in infoArr {
        var info = info
        var infoScore = Int(info.removeLast())!
        var infoStr = info.joined()
        
        if dict[infoStr] == nil {
            dict[infoStr] = [infoScore]
        } else {
            dict[infoStr]?.append(infoScore)
            dict[infoStr]?.sort(by: <)
        }
    }
    
    let sortedDict = dict.sorted(by: { (a, b) in
        return a.key < b.key
    })
    
    var answer = [Int]()
    
    for query in queryArr {

        var q = query
        var score = Int(q.removeLast())!
        var tempCount:Int = 0
        for (key, value) in dict {
            var filterResult = [String]()
            for i in q {
                if !key.contains(i) { break }
                filterResult.append(i)
            }
            if filterResult.count == q.count {
                let cnt = value.filter { $0 >= score }.count
                tempCount += cnt
            }
        }
        answer.append(tempCount)
    }
    return answer
}