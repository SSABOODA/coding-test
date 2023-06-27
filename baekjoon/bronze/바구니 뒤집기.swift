// https://www.acmicpc.net/problem/10811

let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0]
let M = input[1]

var basket = (1...N).map { $0 }

for _ in 0..<M {
    
    let n = readLine()!.split(separator: " ").map { Int($0)! }
    basket[n[0]-1...n[1]-1].reverse()
}

print(basket.map { String($0)}.joined(separator: " "))