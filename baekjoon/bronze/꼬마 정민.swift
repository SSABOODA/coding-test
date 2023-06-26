// https://www.acmicpc.net/problem/11382

print(readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +))