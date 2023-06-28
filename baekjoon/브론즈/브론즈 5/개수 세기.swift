// https://www.acmicpc.net/problem/10807

let count = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = Int(readLine()!)!
print(input.filter { $0 == n }.count)