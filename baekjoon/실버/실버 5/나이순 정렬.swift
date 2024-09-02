// https://www.acmicpc.net/submit/10814/83335046

import Foundation

var n = Int(readLine()!)!
var userInfo: [(Int, String)] = []

for _ in 0..<n {
    let info = readLine()!.components(separatedBy: " ")
    let age = Int(info[0]) ?? 0
    let name = info[1]
    userInfo.append((age, name))
}

_ = userInfo
    .sorted(by: {
        $0.0 < $1.0
    })
    .map {
        print($0.0, $0.1)
    }
