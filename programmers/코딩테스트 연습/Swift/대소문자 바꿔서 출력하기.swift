// https://school.programmers.co.kr/learn/courses/30/lessons/181949?language=swift

import Foundation

let s1 = readLine()!

let result = Array(s1)
    .map { String($0) }
    .map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
    .joined(separator: "")

print(result)


extension String {
    var isLowercase: Bool {
        for c in utf8 where (65...90) ~= c { return false }
        return true
    }
    var isUppercase: Bool {
        for c in utf8 where (99...122) ~= c { return false }
        return true
    }
}
