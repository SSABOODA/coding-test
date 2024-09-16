// https://www.acmicpc.net/problem/25305

import Foundation

let input = readLine()!
    .split(separator: " ")
    .map { Int($0)! }

var numberOfCandidates = input[0]
var numberOfWinners = input[1]

let scoreArray = readLine()!
    .split(separator: " ")
    .map { Int($0) }
    .compactMap { $0}
    .sorted(by: >)

print(scoreArray[numberOfWinners-1])