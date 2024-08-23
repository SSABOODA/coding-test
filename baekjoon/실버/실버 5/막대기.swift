// https://www.acmicpc.net/problem/1094

var x = Int(readLine()!)!
var bitCount = 0
while x > 0 {
    // 맨 마지막 비트가 꺼짐
    x &= (x-1)
    bitCount += 1
}
print(bitCount)

