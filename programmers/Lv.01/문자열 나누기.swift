// 문자열 나누기
// https://school.programmers.co.kr/learn/courses/30/lessons/140108

import Foundation

func solution(_ s:String) -> Int {
    
    var xCount: Int = 0
    var notXCount: Int = 0
    var splitStr: String = ""
    var startStr: String = String(Array(s)[0])
    var resultArr: [String] = []
    
    for i in s {
        var i = String(i)
        
        if i == startStr {
            xCount += 1
        } else {
            notXCount += 1
        }
        
        splitStr += i
        
        if xCount > 0 && notXCount > 0 {
            if xCount == notXCount {
                resultArr.append(splitStr)
                
                if resultArr.joined().count < s.count {
                    startStr = String(Array(s)[resultArr.joined().count])
                }
                
                splitStr = ""
                xCount = 0
                notXCount = 0
            }
        }
    }
    
    if s.count > resultArr.joined().count {
        let sArr = s.map { String($0) }
        resultArr.append(sArr[resultArr.joined().count...(sArr.count - 1)].joined())
    }
    
    return resultArr.count
}
