// https://www.acmicpc.net/problem/10430

var input = readLine()!.split(separator: " ").map { Int($0)! }

let A = input[0]
let B = input[1]
let C = input[2]

let r1 = (A+B)%C
let r2 = ((A%C) + (B%C))%C
let r3 = (A*B)%C
let r4 = ((A%C) * (B%C))%C

print(r1)
print(r2)
print(r3)
print(r4)