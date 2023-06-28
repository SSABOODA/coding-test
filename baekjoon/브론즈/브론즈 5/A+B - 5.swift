// https://www.acmicpc.net/problem/10952

while true {
    let n = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)
    
    if n == 0 {
        break
    }
    print(n)
}