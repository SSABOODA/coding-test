/*
다른 사람이 푼 문제
링크: https://www.acmicpc.net/source/53125073
시간: 52 ms
*/


let n = Int(readLine()!)!
var overlapedSet = Set<String>()
var words = [String]()

for _ in 0..<n {
    let input = readLine()!
    overlapedSet.insert(input)
}

words = Array(overlapedSet)
let tuple: [(Int, String)] = words.map { ($0.count , $0) }

print(tuple.sorted(by: {
    $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0
}).map { $1 }.joined(separator: "\n"))

