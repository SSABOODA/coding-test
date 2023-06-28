// https://www.acmicpc.net/problem/11022

let n = Int(readLine()!)!

for i in 1...n {
    let r = readLine()!.split(separator: " ").map {Int($0)!}
    print("Case #\(i): \(r[0]) + \(r[1]) = \(r.reduce(0, +))")
}