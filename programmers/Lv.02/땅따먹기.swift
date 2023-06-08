// 땅따먹기
// https://school.programmers.co.kr/learn/courses/30/lessons/12913

import Foundation

func solution(_ land:[[Int]]) -> Int {
    var answer: Int = 0
    var land = land
    for i in 0..<(land.count-1) {
        land[i+1][0] += max(land[i][1], land[i][2], land[i][3])
        land[i+1][1] += max(land[i][0], land[i][2], land[i][3])
        land[i+1][2] += max(land[i][0], land[i][1], land[i][3])
        land[i+1][3] += max(land[i][0], land[i][1], land[i][2])
    }
    answer += land[land.endIndex - 1].max()!
    return answer
}
