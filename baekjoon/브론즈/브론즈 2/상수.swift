// https://www.acmicpc.net/problem/2908

let num = readLine()!.split(separator: " ").map { String($0) }
let a = Int(String(num[0].reversed()))!
let b = Int(String(num[1].reversed()))!

(a > b) ? print(a) : print(b)
