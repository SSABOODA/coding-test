// https://www.acmicpc.net/problem/1157

let str = readLine()!.map { String($0.lowercased()) }

let compareStr = Set(str).map { String($0) }
var strCount = [Int]()

for i in compareStr {
    strCount.append(str.filter { $0 == i }.count)
}

let maxNum = strCount.max()!
let duplicationCount = strCount.filter { $0 >= maxNum }.count

if duplicationCount > 1 {
    print("?")
} else {
    print(compareStr[strCount.firstIndex(of: maxNum)!].uppercased())
}