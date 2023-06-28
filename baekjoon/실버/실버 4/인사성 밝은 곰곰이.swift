// https://www.acmicpc.net/problem/25192

let n = Int(readLine()!)!
var answer:Int = 0
var userArr = Set<String>()
for _ in 0..<n {
    let input = readLine()!
    
    if input != "ENTER" {
        userArr.insert(input)
    } else {
        answer += userArr.count
        userArr.removeAll()
    }
}
print(answer + userArr.count)