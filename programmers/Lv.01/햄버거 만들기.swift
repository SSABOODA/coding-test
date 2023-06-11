// 햄버거 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/133502

import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var ingredient: [Int] = ingredient
    let package: [Int] = [1,2,3,1]
    
    var result: Int = 0
    while true {
        var checkPackage: [Int] = []
        for i in ingredient {
            checkPackage.append(i)
            if checkPackage.count >= 4 {
                if Array(checkPackage[(checkPackage.endIndex-4)..<checkPackage.endIndex]) == package {
                    result += 1
                    checkPackage.removeSubrange((checkPackage.endIndex-4)..<checkPackage.endIndex)
                }
            }
        }
        break
    }
    return result
}
