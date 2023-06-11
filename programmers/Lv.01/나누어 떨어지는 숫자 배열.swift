// 나누어 떨어지는 숫자 배열
// https://school.programmers.co.kr/learn/courses/30/lessons/12910

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    return !arr.filter { $0 % divisor == 0 }.isEmpty ? arr.filter { $0 % divisor == 0 }.sorted() : [-1]
}