// https://www.acmicpc.net/problem/2562

var maxArr: [Int] = [0, 0]

for i in 1...9 {
    let n = Int(readLine()!)!
    if n > maxArr[0] {
        maxArr[0] = n
        maxArr[1] = i
    }
}

var answer:String = ""

for i in maxArr {
    answer += "\(i)\n"
}

print(answer)