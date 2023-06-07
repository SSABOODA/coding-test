// 유한소수 판별하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120878

import Foundation

func isPrime(_ num: Int) -> Bool {
    
    if (num < 4) {
        return num == 1 ? false : true
    }
    
    for i in 2...Int(sqrt(Double(num))) {
        if (num % i == 0) {
            return false
        }
    }
    return true
}

func getMeasureArr(_ num: Int) -> [Int] {
    
    var result: [Int] = []
    for i in 1...num {
        if num % i == 0 {
            result.append(i)
        }
    }
    return result
}

func solution(_ aNum:Int, _ bNum:Int) -> Int {
    var aNum = aNum
    var bNum = bNum
    
    var standardNum: Int = aNum < bNum ? aNum : bNum
    
    var tempA: Int = aNum
    var tempB: Int = bNum
    
    while true {
        if standardNum == 1 { break }
        for i in 2...standardNum {
            if (aNum % i == 0) && (bNum % i == 0) {
                tempA = aNum / i
                tempB = bNum / i
            }
        }
        
        if (aNum == tempA) && (bNum == tempB) {
            break
        } else {
            aNum = tempA
            bNum = tempB
            continue
        }
    }
    
    let mesureArr: [Int] = getMeasureArr(bNum)
    var isPrimeArr: [Int] = []
    
    for i in mesureArr {
        if isPrime(i) == true {
            isPrimeArr.append(i)
        }
    }
    
    if isPrimeArr.contains(2) {
        isPrimeArr.remove(at: isPrimeArr.firstIndex(of: 2)!)
    }
    
    if isPrimeArr.contains(5) {
        isPrimeArr.remove(at: isPrimeArr.firstIndex(of: 5)!)
    }
    
    return isPrimeArr.count != 0 ? 2 : 1
}