// JadenCase 문자열 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12951

func solution(_ s:String) -> String {
    let newArr = s.components(separatedBy: " ")
    
    var answer: [String] = []
    for i in newArr {
        if i == "" {
            answer.append(i)
        } else {
            if i.first!.isNumber {
                answer.append(i.lowercased())
            } else {
                answer.append(i.capitalized)
            }
        }
        
    }
    
    return answer.joined(separator: " ")
}