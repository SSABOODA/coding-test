// https://www.acmicpc.net/problem/2566

var maxtrix = [[Int]]()

for _ in 0..<9 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    maxtrix.append(input)
}

var answerNum:Int = 0
var answerIdx:String = ""

for (idx1, val1) in maxtrix.enumerated() {
    for (idx2, val2) in val1.enumerated() {
        if val2 > answerNum {
            answerNum = val2
            answerIdx = "\(idx1+1) \(idx2+1)"
        }
    }
}

print("\(answerNum)")
answerNum == 0 ? print("1 1") : print(answerIdx)