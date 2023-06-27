// https://www.acmicpc.net/problem/5597

var studentIndex = (1...30).map {$0}
for _ in 0..<28 {
    let n = Int(readLine()!)!
    studentIndex.remove(at: studentIndex.firstIndex(of: n)!)
}

print(studentIndex[0])
print(studentIndex[1])