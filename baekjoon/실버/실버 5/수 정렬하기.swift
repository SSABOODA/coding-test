// https://www.acmicpc.net/source/83266054

import Foundation

var n = Int(readLine()!)!
var numberArray = [Int]()

for _ in 0..<n {
    numberArray.append(Int(readLine()!)!)
}

numberArray.sorted().forEach { print($0) }