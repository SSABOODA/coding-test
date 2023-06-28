// https://www.acmicpc.net/problem/2231

let n = Int(readLine()!)!

var tempNum:Int = 0

for i in 1..<n {
    
    let sumDigit = String(i).map { Int(String($0))! }.reduce(0, +)
    let sumNum = i + sumDigit
    
    if sumNum == n {
        tempNum = i
        break
    }
}
print(tempNum)