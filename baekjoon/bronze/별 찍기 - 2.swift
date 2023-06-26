// https://www.acmicpc.net/problem/2439

let n = Int(readLine()!)!

for i in 1...n {
    let r = String(repeating: " ", count: n-i) + String(repeating: "*", count: i)
    print(r)
}