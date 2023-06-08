// 마법의 엘리베이터
// https://school.programmers.co.kr/learn/courses/30/lessons/148653

import Foundation

func solution(_ storey:Int) -> Int {
    var answer:Int = 0
    var s = storey
    let arr = Array(String(storey).reversed())
    
    var idx:Int = 0
    var mark:Character = "x"
    var num:Int = 0
    while idx <= arr.count-1 {
        
        if mark == "+" {
            num = Int(String(arr[idx]))! + 1
        } else {
            num = Int(String(arr[idx]))!
        }
        
        if num > 5 {
            s += (10-num) * Int(pow(10.0, Double(idx)))
            answer += (10-num)
            mark = "+"
        } else if (num == 5) && (idx < arr.count-1) {
            let nextNum = Int(String(arr[idx+1]))!
            if nextNum >= 5 {
                s += (10-num) * Int(pow(10.0, Double(idx)))
                answer += (10-num)
                mark = "+"
            } else {
                s -= num * Int(pow(10.0, Double(idx)))
                answer += num
                mark = "-"
            }
        } else {
            s -= num * Int(pow(10.0, Double(idx)))
            answer += num
            mark = "-"
        }
        idx += 1
    }
    return (s != 0) ? answer+1 : answer
}
