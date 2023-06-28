// https://www.acmicpc.net/problem/2292

let n = Int(readLine()!)!

var i:Int = 0
var endNum:Int = 1
while true {
    i += 1   
    let r = endNum+1+(6*i)-1
    endNum = r
    
    if r >= n {
        (n == 1) ? print(1) : print(i+1)
        break
    }
}