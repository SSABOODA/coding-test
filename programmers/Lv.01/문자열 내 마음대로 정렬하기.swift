// 문자열 내 마음대로 정렬하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12915

func solution(_ strings:[String], _ n:Int) -> [String] {
    
    var result = strings.sorted { a, b in
        if Array(a)[n] == Array(b)[n] {
            return a < b
        } else {
            return Array(a)[n] < Array(b)[n]
        }
    }
       
    return result
}