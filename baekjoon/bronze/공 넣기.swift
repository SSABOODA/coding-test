// https://www.acmicpc.net/problem/10810

let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0]
let M = input[1]

var basket = Array(repeating: 0, count: N)

for _ in 0..<M {
    let cond = readLine()!.split(separator: " ").map { Int($0)! }
    
    for j in cond[0]...cond[1] {
        basket[j-1] = cond[2]
    }
}

var answer:String = ""

for i in basket {
    answer += "\(i) "
}

print(answer)