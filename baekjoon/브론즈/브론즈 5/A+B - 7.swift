// https://www.acmicpc.net/problem/11021

let n = Int(readLine()!)!

for i in 1...n {
    let r = readLine()!.split(separator: " ").map {Int($0)!}.reduce(0, +)
    print("Case #\(i): \(r)")
}