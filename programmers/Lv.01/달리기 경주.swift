// 달리기 경주
// https://school.programmers.co.kr/learn/courses/30/lessons/178871

import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var player = players
    var calls = callings
    var dict = [String: Int]()
    
    for (idx, value) in player.enumerated() {
        dict[value] = idx
    }

    for i in 0..<callings.count {
        var call = calls[i]
        var rank = dict[call]!
        let name = player[rank - 1]
        player.swapAt(rank-1, rank)
        dict[call]! -= 1
        dict[player[rank]]! += 1
    }
    return player
}
