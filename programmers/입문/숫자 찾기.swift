// 숫자 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/120904

import Foundation

func solution(_ num:Int, _ k:Int) -> Int {    
    if let result = Array(String(num)).map {String($0)}.firstIndex(of: String(k)) {
        return result + 1
    }
    return -1

}
