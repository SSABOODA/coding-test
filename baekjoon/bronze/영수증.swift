// https://www.acmicpc.net/problem/25304


let totalPrice = Int(readLine()!)!
let productTypeCount = Int(readLine()!)!

var price:Int = 0

for _ in 0..<productTypeCount {
    price += readLine()!.split(separator: " ").map { Int($0)! }.reduce(1, *)
}

totalPrice == price ? print("Yes") : print("No")