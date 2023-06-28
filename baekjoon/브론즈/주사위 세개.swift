// https://www.acmicpc.net/problem/2480

let dice = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)

let firstDice = dice[0]
let secondDice = dice[1]
let thirdDice = dice[2]

if (firstDice == secondDice) && (secondDice == thirdDice) {
    print( 10_000 + (firstDice*1_000) )
} else if (firstDice != secondDice) && (secondDice != thirdDice) {
    print(thirdDice*100)
} else {
    if (firstDice == secondDice) {
        print( 1_000 + (firstDice*100) )
    }
    
    if (secondDice == thirdDice) {
        print( 1_000 + (secondDice*100) )
    }
}