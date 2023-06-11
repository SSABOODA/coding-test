// 문자열 다루기 기본
// https://school.programmers.co.kr/learn/courses/30/lessons/12918

func solution(_ s:String) -> Bool {
    guard s.count == 4 || s.count == 6 else { return false}
    return s.count == s.compactMap { Int(String($0)) }.count ? true : false
}