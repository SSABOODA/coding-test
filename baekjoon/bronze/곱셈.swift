// https://www.acmicpc.net/problem/2588

var input1 = readLine()!
var input2 = readLine()!

var result:Int = 0
for (i, v) in String(input2).reversed().enumerated() {
    let multiplication = Int(input1)! * Int(String(v))!
    let re = String(multiplication) + String(repeating: "0", count: i)
    result += Int(re)!
    print(multiplication)
}
print(result)