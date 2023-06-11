// 수박수박수박수박수박수?
// https://school.programmers.co.kr/learn/courses/30/lessons/12922

func solution(_ n:Int) -> String {
    var result: String = ""
    (1...n).forEach { i in
        i % 2 != 0 ? (result += "수") : (result += "박")
    }
    return result
}