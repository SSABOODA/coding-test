// https://www.acmicpc.net/problem/2720

let n = Int(readLine()!)!

let quarter = 25
let dime = 10
let nickel = 5
let penny = 1

var answer: String = ""

for _ in 0..<n {
    var changes = Int(readLine()!)!
    
    var tempArr = [Int]()
        
    tempArr.append(changes / quarter)
    changes = changes % quarter
    tempArr.append(changes / dime)
    changes = changes % dime
    tempArr.append(changes / nickel)
    changes = changes % nickel
    tempArr.append(changes / penny)
    changes = changes % penny
    
    let result = tempArr.map { String($0) }.joined(separator: " ")
    answer += "\(result)\n"
}

print(answer)