// https://www.acmicpc.net/problem/1436

import Foundation

let input = Int(readLine()!)!

var numberOfApocalypse = 665
var apocalypseIndex = 0

while true {
    numberOfApocalypse += 1
    
    let resultChar = String(numberOfApocalypse)
    var sixCheck:Int = 0
    
    for i in resultChar {
        if i == "6" {
            sixCheck += 1
        } else {
            sixCheck = 0
        }
        
        if sixCheck == 3 {
            apocalypseIndex += 1
        }
    }
    
    if apocalypseIndex == input {
        print(numberOfApocalypse)
        break
    }
}