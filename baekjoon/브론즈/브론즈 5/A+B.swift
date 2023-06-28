// https://www.acmicpc.net/problem/1000

let input = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)
print(input)