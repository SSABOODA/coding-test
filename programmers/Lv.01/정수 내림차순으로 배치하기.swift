// 정수 내림차순으로 배치하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12933

func solution(_ n:Int64) -> Int64 {
    return Int64(String(n).map { String($0) }.sorted(by: >).joined())!
}