// 메뉴 리뉴얼
// https://school.programmers.co.kr/learn/courses/30/lessons/72411

import Foundation

func combination<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
    var result = [[T]]()
    if array.count < n { return result }

    func cycle(_ index: Int, _ now: [T]) {
        if now.count == n {
            result.append(now)
            return
        }
        for i in index..<array.count {
            cycle(i + 1, now + [array[i]])
        }
    }
    
    cycle(0, [])
    
    return result
}

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    
    var dict = Dictionary<String, Int>()
    
    for c in course {
        for order in orders {
            let arr = Array(order).sorted(by: <).map { String($0) }
            let com = combination(arr, c)
            
            for i in com {
                let k = i.joined()
                if dict[k] == nil {
                    dict[k] = 1
                } else {
                    dict[k]! += 1
                }
            }
        }
    }
    
    for i in dict {
        if i.value < 2 {
            dict[i.key] = nil
        }
    }
    
    var result = [String]()
    for i in course {
        var newDict = dict
        for j in newDict {
            if j.key.count != i {
                newDict[j.key] = nil
            }   
        }
        
        if !newDict.isEmpty {
            let maxNum = newDict.values.max()!
            for k in newDict {
                if k.value == maxNum {
                    result.append(k.key)
                }
            }
        }
    }
    
    return result.sorted(by: <)
}
