// 약수의 합
// https://school.programmers.co.kr/learn/courses/30/lessons/12928

func solution(_ n:Int) -> Int {
    return n == 0 ? 0 : (1...n).filter { n % $0 == 0 }.reduce(0, +)
}

