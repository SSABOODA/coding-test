// 자연수 뒤집어 배열로 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12932

func solution(_ n:Int64) -> [Int] {
    return String(n).reversed().compactMap {Int(String($0))}
}