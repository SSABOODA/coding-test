// https://school.programmers.co.kr/learn/courses/30/lessons/120844

import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var numbersArray: [Int] = numbers
    
    if direction == "right" {
        numbersArray.removeLast()
        numbersArray.insert(numbers[numbersArray.endIndex], at: 0)
        return numbersArray
    } else {
        numbersArray.removeFirst()
        numbersArray.append(numbers[0])
        return numbersArray
    }    
}