// 삼각형의 완성조건 (2)
// https://school.programmers.co.kr/learn/courses/30/lessons/120868


import Foundation

func solution(_ sides:[Int]) -> Int {    
    
    // 둘 중에 하나가 더 큰 변이라고 생각하는 경우
    var bigSide: Int = sides.max()!
    var smallSide: Int = sides.min()!
    
    var r: Int = 1
    var remainSide: [Int] = []
    while true {
        if bigSide < r + smallSide {
            if r >= bigSide + smallSide {
                break
            }
            remainSide.append(r)
        }
        r += 1
        
        // 나머지 한변이 제일 큰 변이라고 생각하는 경우
        if r > bigSide {
            if r >= bigSide + smallSide {
                break
            } else {
                remainSide.append(r)
            }
        }
    }
    return Set(remainSide).count
}
