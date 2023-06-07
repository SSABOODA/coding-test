// https://school.programmers.co.kr/learn/courses/30/lessons/120850

import Foundation

func solution(_ my_string:String) -> [Int] {
    return Array(my_string.filter { Int(String($0)) != nil }).map {Int(String($0))!}.sorted()
}