// https://www.acmicpc.net/problem/1316

let n = Int(readLine()!)!

var answer:Int = 0
for _ in 0..<n {
    
    let str = readLine()!.map { String($0) }
    
    var newArr = [String]()
    
    var check:Bool = true
    for (i, v) in str.enumerated() {
        
        if newArr.isEmpty {
            newArr.append(v)
            continue
        }
        
        if newArr[newArr.endIndex-1] == v {
            newArr.append(v)
        } else {
            if str[0...i-1].contains(v) {
                check = false
                break
            }
            newArr.append(v)
        }
    }
    if check == true {
        answer += 1
    }
}
print(answer)
