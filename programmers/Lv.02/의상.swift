// 의상
// https://school.programmers.co.kr/learn/courses/30/lessons/42578

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var dict1 = Dictionary<String, [String]>()
    var dict2 = Dictionary<String, Int>()
    
    clothes.map { i in
         if dict1[i[1]] == nil {
             dict1[i[1]] = []
             dict1[i[1]]!.append(i[0])
         } else {
            dict1[i[1]]!.append(i[0])
         }
    }
    
    for (key, value) in dict1 {
        dict2[key] = value.count
    }
    
    var result: Int = 1
    for (key, value) in dict2 {
        result *= (value + 1)
    }
    
    return result - 1
}
