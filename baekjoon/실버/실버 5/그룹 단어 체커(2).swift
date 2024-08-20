// https://www.acmicpc.net/problem/1316
// 푼 날짜 : 2024.08.18

import Foundation

let wordCount = Int(readLine()!)!

var totalCount: Int = 0
for _ in 0..<wordCount {
    let word = readLine()!
    
    var previous: [String] = []
    var current: String = ""
    var isGroupCheckWord: Bool = true
    for char in word {
        let str = String(char)
        
        if previous.contains(str) {
            isGroupCheckWord = false
            break
        }
        if current.isEmpty {
            current = str
            continue
        }
        if current != str {
            previous.append(current)
            current = str
            continue
        }
    }
    if isGroupCheckWord {
        totalCount += 1
    }
}

print(totalCount)
