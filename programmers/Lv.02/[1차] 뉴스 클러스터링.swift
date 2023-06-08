// [1차] 뉴스 클러스터링
// https://school.programmers.co.kr/learn/courses/30/lessons/17677

func getCompareStrArr(_ str: String) -> [String] {
    var compareStrArr: [String] = []
    var tempStr: String = ""
    var checkLetter: Character?
    for i in str {
        checkLetter = i
        
        if checkLetter!.isLetter {
            tempStr += String(checkLetter!)
        } else {
            tempStr = ""
            continue
        }
        
        if tempStr.count == 2 {
            compareStrArr.append(tempStr.lowercased())
            tempStr.remove(at: tempStr.firstIndex(of: tempStr.first!)!)
        }
    }
    
    return compareStrArr
}

func solution(_ str1:String, _ str2:String) -> Int {
    
    let strArr1 = getCompareStrArr(str1)
    let strArr2 = getCompareStrArr(str2)
    
    let strArr1Cnt = strArr1.count
    let strArr2Cnt = strArr2.count
    
    var moreThanArr: [String] = strArr1 // 더 큰거
    var lessThanArr: [String] = strArr2 // 더 작은거
    
    if strArr1Cnt > strArr2Cnt {
        moreThanArr = strArr1
        lessThanArr = strArr2
    } else if strArr1Cnt < strArr2Cnt {
        moreThanArr = strArr2
        lessThanArr = strArr1
    }

    var intersection: [String] = []
    for i in lessThanArr {
        if moreThanArr.contains(i) {
            moreThanArr.remove(at: moreThanArr.firstIndex(of: i)!)
            intersection.append(i)
        }
    }
    
    let union = lessThanArr + moreThanArr
    
    if intersection == union { return 65536 }
    
    let answer = Int(Double(intersection.count) / Double(union.count) * Double(65536) )
    return answer
}
