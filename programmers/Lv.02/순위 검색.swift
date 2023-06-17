// 순위 검색
// https://school.programmers.co.kr/learn/courses/30/lessons/72412

import Foundation

func lowerbound(_ arr: [Int], _ score: Int) -> Int {
    var low = 0
    var high = arr.count

    while low < high {
        let mid = (low + high) / 2
        if score <= arr[mid] {
            high = mid
        } else {
            low = mid + 1
        }
    }
    return arr.count - low
}


func solution(_ info:[String], _ query:[String]) -> [Int] {
    let infoArr:[[String]] = info.map { $0.components(separatedBy: " ") }
    let queryArr:[[String]] = query.map { $0.components(separatedBy: " and ")
                                         .joined(separator: " ")
                                         .components(separatedBy: " ")
                                        }

    var infoDict = Dictionary<String, [Int]>()

    for info in infoArr {
        let lang = [info[0], "-"]
        let job = [info[1], "-"]
        let rank = [info[2], "-"]
        let food = [info[3], "-"]
        let score = Int(info[4])!

        for l in lang {
            for j in job {
                for r in rank {
                    for f in food {
                        let key = "\(l)\(j)\(r)\(f)"
                        if infoDict[key] == nil {
                            infoDict[key] = [score]
                        } else {
                            infoDict[key]?.append(score)
                        }
                    }
                }
            }
        }
    }

    for (k, v) in infoDict {
        let newVal = v.sorted(by: <)
        infoDict[k] = newVal
    }

    var answer = [Int]()
    for query in queryArr {
        var query = query
        let score = Int(query.removeLast())!
        let compareQueryStr = query.joined()
        let compareScore = infoDict[compareQueryStr]

        if let scoreArr = compareScore {
            answer.append(lowerbound(scoreArr, score))
        } else {
            answer.append(0)
        }
    }
    return answer
}