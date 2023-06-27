// https://www.acmicpc.net/problem/9086

let n = Int(readLine()!)!
var answer:String = ""
for _ in 0..<n {
    let str = Array(readLine()!)
    answer += "\(str[0])\(str[str.endIndex-1])\n"
}
print(answer)