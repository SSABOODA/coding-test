//https://www.acmicpc.net/problem/11651

let n = Int(readLine()!)!
var positionArray: [(x: Int, y: Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    positionArray.append((input[0], input[1]))
}

positionArray.sort { $0.y == $1.y ? $0.x < $1.x : $0.y < $1.y }

positionArray.forEach { print($0.x, $0.y) }