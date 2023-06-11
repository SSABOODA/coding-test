// 하샤드 수
// https://school.programmers.co.kr/learn/courses/30/lessons/12947

func solution(_ x:Int) -> Bool { 
    return x % String(x).compactMap { Int(String($0)) }.reduce(0, +) == 0 ? true : false
}