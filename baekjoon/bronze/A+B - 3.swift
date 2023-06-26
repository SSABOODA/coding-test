// https://www.acmicpc.net/problem/10950

let repeatNum = Int(readLine()!)!

for _ in 0..<repeatNum {
    print(readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +) )
}