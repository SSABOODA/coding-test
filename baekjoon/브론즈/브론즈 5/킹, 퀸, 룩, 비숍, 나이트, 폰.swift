// https://www.acmicpc.net/problem/3003

var chess = [1,1,2,2,2,8]

let myChess = readLine()!.split(separator: " ").map { Int($0)! }

var answer = [Int]()
for (a, b) in zip(myChess, chess) {
    answer.append(b-a)
}

print(answer.map { String($0) }.joined(separator: " "))