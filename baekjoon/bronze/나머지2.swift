// https://www.acmicpc.net/submit/3052/62391620

var remainArr = Set<Int>()

for _ in 0..<10 {
    let n = Int(readLine()!)!
    remainArr.insert(n % 42)
}

print(remainArr.count)