// 성격 유형 검사하기
// https://school.programmers.co.kr/learn/courses/30/lessons/118666

import Foundation

func getCustomDictSorted(_ indicator: Dictionary<String, Int>) -> Array<(key: String, value: Int)> {
    let result = indicator.sorted { (f, s) in
        if f.value == s.value {
            return f.key < s.key
        } else {
            return f.value > s.value
        }
    }
    return result
}


func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var indicators1: Dictionary<String, Int> = ["R": 0, "T": 0]
    var indicators2: Dictionary<String, Int> = ["C": 0, "F": 0]
    var indicators3: Dictionary<String, Int> = ["J": 0, "M": 0]
    var indicators4: Dictionary<String, Int> = ["A": 0, "N": 0]
    
    let scoreDict: Dictionary<Int, Int> = [
        1: 3,
        2: 2,
        3: 1,
        4: 0,
        5: 1,
        6: 2,
        7: 3
    ]
    
    for (a, b) in zip(survey, choices) {        
        var surveyType: String = ""
        var score: Int = 0
        
        if b < 4 {
            surveyType = String(a.prefix(1))
            score = scoreDict[b]!
        } else {
            surveyType = String(a.suffix(1))
            score = scoreDict[b]!
        }
        
        if "RT".contains(surveyType) {
            indicators1[surveyType]! += score
        } else if "CF".contains(surveyType) {
            indicators2[surveyType]! += score
        } else if "JM".contains(surveyType) {
            indicators3[surveyType]! += score
        } else {
            indicators4[surveyType]! += score
        }
    }
    
    var result: String = ""
    result += getCustomDictSorted(indicators1)[0].key
    result += getCustomDictSorted(indicators2)[0].key
    result += getCustomDictSorted(indicators3)[0].key
    result += getCustomDictSorted(indicators4)[0].key
    
    return result
}