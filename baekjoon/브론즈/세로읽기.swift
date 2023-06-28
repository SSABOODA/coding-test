// https://www.acmicpc.net/problem/10798

var strArr = Array(repeating: "", count: 26)

for _ in 0..<5 {
    let input = readLine()!
    
    for (i, v) in input.enumerated() {
        
        strArr[i] += String(v)
    }
}

print(strArr.joined())