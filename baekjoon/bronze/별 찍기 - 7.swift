// https://www.acmicpc.net/problem/2444

let n = Int(readLine()!)!

for i in 1...n {
    let star = String(repeating: " ", count: n-i) + String(repeating: "*", count: 2*i-1)
    print(star)
}

for i in 1..<n {
    let star = String(repeating: " ", count: i) + String(repeating: "*", count: 2*(n-i)-1)
    print(star)
}
