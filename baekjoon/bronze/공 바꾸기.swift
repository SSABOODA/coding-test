// https://www.acmicpc.net/problem/10813

let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0]
let M = input[1]

var basket = (1...N).map { $0 }

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    basket.swapAt(input[0]-1, input[1]-1)
}

var answer:String = ""
for i in basket {
    answer += "\(i) "
}

print(answer)