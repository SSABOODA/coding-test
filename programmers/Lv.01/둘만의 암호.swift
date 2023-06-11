// 둘만의 암호
// https://school.programmers.co.kr/learn/courses/30/lessons/155652

import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var alphabet: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    skip.forEach { i in
        alphabet.remove(at: alphabet.firstIndex(of: String(i))!)
    }
    
    var result: String = ""
    for i in s {
        var nextIndex = Int(alphabet.firstIndex(of: String(i))!) + index
        if nextIndex >= alphabet.count {
            let rep = nextIndex / alphabet.count
            nextIndex -= alphabet.count * rep
        }
        result += alphabet[nextIndex]
    }
    return result
}
