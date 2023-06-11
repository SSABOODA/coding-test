// 체육복
// https://school.programmers.co.kr/learn/courses/30/lessons/42862

import Foundation


func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var lostFilter = lost.filter{!reserve.contains($0)}.sorted()
    var reserveFilter = reserve.filter{!lost.contains($0)}.sorted()
    var successCount: Int = n - lostFilter.count
        
    for i in reserveFilter {
        if lostFilter.contains(i - 1) {
            successCount += 1
            lostFilter.remove(at: lostFilter.firstIndex(of: i - 1)!)
        } else if lostFilter.contains(i + 1) {
            successCount += 1
            lostFilter.remove(at: lostFilter.firstIndex(of: i + 1)!)
        }
    }
    return successCount
}