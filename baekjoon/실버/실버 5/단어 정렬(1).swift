// https://www.acmicpc.net/problem/1181

/*
내가 푼 문제
링크: https://www.acmicpc.net/source/83240766
시간: 620ms
*/

if let n = Int(readLine()!) {
    let wordArray = (0..<n)
        .map { _ in readLine() ?? "" }
    
    let setWordArray = Set(wordArray)
        .sorted {
            if $0.count < $1.count {
                return true
            } else if $0.count == $1.count {
                return $0 < $1
            }
            return false
        }
        
    setWordArray
        .forEach { print($0) }
}

