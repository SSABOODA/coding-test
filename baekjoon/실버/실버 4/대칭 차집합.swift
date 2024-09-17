// https://www.acmicpc.net/problem/1269

import Foundation

let input = readLine()!

let firstElementArray = Set(readLine()!
    .split(separator: " ")
    .compactMap { Int($0) })

let secondElementArray = Set(readLine()!
    .split(separator: " ")
    .compactMap { Int($0) })

let result = firstElementArray.subtracting(secondElementArray).count + secondElementArray.subtracting(firstElementArray).count
print(result)

