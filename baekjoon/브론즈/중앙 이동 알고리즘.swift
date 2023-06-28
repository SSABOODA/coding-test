// https://www.acmicpc.net/problem/2903

let n = Int(readLine()!)!
var dot:Int = 3
for _ in 0..<n-1 {
    dot += dot-1
}

print(dot*dot)