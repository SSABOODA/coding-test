// 멀리 뛰기
// https://school.programmers.co.kr/learn/courses/30/lessons/12914

func solution(_ n:Int) -> Int {
    
    var n1: Int = 1
    var n2: Int = 2
    var result: Int = 3
    
    switch n {
    case 1...3:
        return n
    default:
        print("")
    }
    
    for _ in 0..<n-3 {
        n1 = n2
        n2 = result
        result = (n1 + n2) % 1234567
    }
    return result
}