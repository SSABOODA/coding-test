// N개의 최소공배수
// https://school.programmers.co.kr/learn/courses/30/lessons/12953

func getPrimeArr(_ n: Int) -> [Int] {
    var isPrimeArr: [Int] = []
    for i in 2...n {
        var checkPrimeCount: Int = 0
        for j in 2...i {
            if i % j == 0 {
                checkPrimeCount += 1
            }
        }
        if checkPrimeCount == 1 {
            isPrimeArr.append(i)
        }
    }
    return isPrimeArr
}

func solution(_ arr:[Int]) -> Int {
    
    var arr: [Int] = arr
    let primeArr = getPrimeArr(arr.max()!)

    var gcd: Int = 1
    for prime in primeArr {
        
        while true {            
            let cnt = arr.filter { $0 % prime == 0 }.count
            if cnt == 0 {
                break
            } else {
                gcd *= prime
                for i in 0..<arr.count {
                    if (arr[i] != 1) && (arr[i] % prime == 0) {
                        arr[i] /= prime
                    }
                }
            }
        }
    }
    return gcd
}