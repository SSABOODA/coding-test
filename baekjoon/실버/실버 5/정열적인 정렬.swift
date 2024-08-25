// https://www.acmicpc.net/problem/16212

import Foundation

let _ = Int(readLine()!)!
let result = readLine()!
    .split(separator: " ")
    .compactMap { Int($0) }
    .sorted()
    .map { String($0) }
    .joined(separator: " ")


print(result)

