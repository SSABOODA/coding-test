// 인덱스 바꾸기
// https://school.programmers.co.kr/learn/courses/30/lessons/120895

import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var arr: [String] = my_string.map {String($0)}
    arr.swapAt(num1, num2)
    return arr.joined()
}