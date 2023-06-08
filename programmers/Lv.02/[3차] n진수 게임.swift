// [3차] n진수 게임
// https://school.programmers.co.kr/learn/courses/30/lessons/17687

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {

    var idx: Int = 0
    var checkStr: [String] = []
    
    while checkStr.count <= t*m {
        
        checkStr += String(idx, radix: n).map { String($0) }
        idx += 1
    }
    
    var result: String = ""
    var startIndex: Int = p - 1
    
    while true {
        if result.count == t { break }
        result += checkStr[startIndex].uppercased()
        startIndex += m
    }

    return result
}
