// https://www.acmicpc.net/problem/2480

let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let lineArray = input

var sameCount: Int = 0
var sameNumber: Int = 0
for i in 0..<2 {
    if lineArray[i+1] - lineArray[i] == 0 {
        sameCount += 1
        sameNumber = lineArray[i]
    }
}

var result: Int = 0
if sameCount == 0 {
    result = lineArray[lineArray.count-1] * 100
} else if sameCount == 1 {
    result = 1000 + (sameNumber * 100)
} else {
    result = 10000 + (sameNumber * 1000)
}

print(result)
