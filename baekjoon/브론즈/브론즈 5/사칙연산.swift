// https://www.acmicpc.net/problem/10869

let input = readLine()!.split(separator: " ").map { Int($0) }

let a:Int = input[0]!
let b:Int = input[1]!

print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%b)
