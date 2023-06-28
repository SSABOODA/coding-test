// https://www.acmicpc.net/problem/1546

let n = Int(readLine()!)!
let numArr = readLine()!.split(separator: " ").map { Int($0)! }
let maxNum = numArr.max()!

var newArr = [Double]()
for i in numArr {
    newArr.append( Double(i)/Double(maxNum)*100.0 )
}
print(newArr.reduce(0, +) / Double(n) )