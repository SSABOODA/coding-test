// https://www.acmicpc.net/problem/2798

let condition = readLine()!.split(separator: " ").map { Int($0)! }
let card = readLine()!.split(separator: " ").map { Int($0)! }

let cardCnt = condition[0]
let limit = condition[1]
var tempNum:Int = 0

for i in 0..<card.count {
    for j in i+1..<card.count {
        for k in j+1..<card.count {
            let sumNum = card[i] + card[j] + card[k]
            
            if (limit >= sumNum) && (tempNum < sumNum) {
                tempNum = sumNum                
            }
        }
    }
}

print(tempNum)