// https://www.acmicpc.net/problem/11720

let n = Int(readLine()!)!
let num = readLine()!.map { Int(String($0))! }.reduce(0, +)
print(num)