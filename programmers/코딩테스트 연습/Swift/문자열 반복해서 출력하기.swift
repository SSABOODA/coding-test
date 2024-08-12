// https://school.programmers.co.kr/learn/courses/30/lessons/181950?language=swift

import Foundation

let inp = readLine()!.components(separatedBy: [" "]).map { $0 }
let (s1, a) = (inp[0], Int(inp[1])!)

let strArray = Array(repeating: s1, count: a).joined(separator: "")
print(strArray)
