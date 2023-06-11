// 이상한 문자 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12930

func solution(_ s:String) -> String {
    var resultArr: [String] = []
    s.components(separatedBy: " ").enumerated().forEach { (index, element) in
        
        var str: String = ""
        element.enumerated().forEach { (index, element) in
            str += index % 2 == 0 ? String(element).uppercased() : String(element).lowercased()
        }
        resultArr.append(str)
    }
    return resultArr.joined(separator: " ")
}
    