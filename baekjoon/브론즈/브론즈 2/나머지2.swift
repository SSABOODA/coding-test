// https://www.acmicpc.net/problem/3052

var remainArr = Set<Int>()

for _ in 0..<10 {
    let n = Int(readLine()!)!
    remainArr.insert(n % 42)
}

print(remainArr.count)