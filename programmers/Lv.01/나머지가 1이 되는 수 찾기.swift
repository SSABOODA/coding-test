// 나머지가 1이 되는 수 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/87389

import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter { n % $0 == 1 }.min()!
}