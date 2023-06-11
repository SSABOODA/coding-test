// 로또의 최고 순위와 최저 순위
// https://school.programmers.co.kr/learn/courses/30/lessons/77484

import Foundation

func solution(_ lottos:[Int], _ winNums:[Int]) -> [Int] {
    
    var winNums: [Int] = winNums
    let remainNums: [Int] = lottos.filter { $0 != 0 }
    let eraseNumsCount: Int = lottos.count - remainNums.count
    
    var result: Int = 0
    
    for i in remainNums {
        if winNums.contains(i) {
            result += 1
            winNums.remove(at: winNums.firstIndex(of: i)!)
        }
    }
    
    var resultArr: [Int] = []
    var answer: [Int] = []
    
    resultArr.append((result+eraseNumsCount))
    resultArr.append(result)
    
    for r in resultArr {
        switch r {
        case 6:
            answer.append(1)
        case 5:
            answer.append(2)
        case 4:
            answer.append(3)
        case 3:
            answer.append(4)
        case 2:
            answer.append(5)
        default:
            answer.append(6)
        }
    }
    
    return answer
}
