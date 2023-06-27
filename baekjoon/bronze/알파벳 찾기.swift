// https://www.acmicpc.net/problem/10809

let alphabet = (1...26).map { String(UnicodeScalar($0 + 96)!) }
let str = readLine()!.map { String($0) }
var answer = [Int]()

for i in alphabet {
    
    if str.contains(i) {
        answer.append(str.firstIndex(of: String(i))!)
    } else {
        answer.append(-1)
    }
}

print(answer.map { String($0) }.joined(separator: " "))