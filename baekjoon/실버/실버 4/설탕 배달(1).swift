// https://www.acmicpc.net/problem/2839

let n = Int(readLine()!)!

var five:Int = 0
var three:Int = 0

var answer = [Int]()

five = n / 5

for i in 0...five {
    
    let remain = n - (5*i)
    if remain % 3 == 0 {
        answer.append(i+(remain/3))
    }
}

answer.isEmpty ? print(-1) : print(answer.min()!)