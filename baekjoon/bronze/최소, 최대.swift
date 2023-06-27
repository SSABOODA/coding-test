// https://www.acmicpc.net/problem/10818

let n = readLine()!.split(separator: " ").map {Int($0)! }
let arr = readLine()!.split(separator: " ").map { Int($0)! }
print("\(arr.min()!) \(arr.max()!)")