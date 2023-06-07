// https://school.programmers.co.kr/learn/courses/30/lessons/120849

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.filter {["a", "e", "i", "o", "u"].contains(String($0)) == false}
}