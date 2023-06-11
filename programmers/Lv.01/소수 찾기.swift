// 소수 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/12921

func solution(_ n:Int) -> Int {
    var arr = Array(repeating: true, count: n+1)
    var primes = [Int]()
    for i in 2...n {
        if arr[i] == true {
            for j in stride(from: i, through: n, by: i) {
                    arr[j] = false
            }
            primes.append(i)
        }
    }
    return primes.count
}