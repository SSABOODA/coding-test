// https://www.acmicpc.net/problem/2675

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let repeatCount = Int(input[0])!
    let repeatStr = input[1]
    
    var answer:String = ""
    for j in repeatStr {
        answer += String(repeating: j, count: repeatCount)
    }
    print(answer)
}
