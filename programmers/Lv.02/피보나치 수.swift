// 피보나치 수
// https://school.programmers.co.kr/learn/courses/30/lessons/12945

func solution(_ n:Int) -> Int {

    var fibonacci: [Int] = [0, 1]
    var initIndex: Int = 0

    var result: Int = 0
    while initIndex <= 100_000 {
        let fibonacciSum: Int = fibonacci[initIndex] + fibonacci[initIndex+1]
        fibonacci.append(fibonacciSum % 1234567)
        initIndex += 1
        if (fibonacci.endIndex - 1) == n {
            result = fibonacci[fibonacci.endIndex - 1]
            break
        }
    }
    return result
}
