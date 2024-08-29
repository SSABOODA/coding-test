import Foundation


import Foundation

let n = readLine()!

let result = Array(String(n))
    // .map { $0 }
    .sorted(by: >)
    .joined(separator: "")

print(result)

