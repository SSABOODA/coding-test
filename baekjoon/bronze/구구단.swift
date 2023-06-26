// https://www.acmicpc.net/problem/2739

let num = Int(readLine()!)!

(1...9).forEach({ i in
    print("\(num) * \(i) = \(num * i)")
})
