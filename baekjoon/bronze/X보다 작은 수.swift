// https://www.acmicpc.net/problem/10871

let nx = readLine()!.split(separator: " ").map {Int($0)! }
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var answer:String = ""

for i in arr {
    if i < nx[1] {
        answer += "\(i) "
    }
}
print(answer)