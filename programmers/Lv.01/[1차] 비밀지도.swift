// [1차] 비밀지도
// https://school.programmers.co.kr/learn/courses/30/lessons/17681

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var resultArr: [String] = []
    for (a, b) in zip(arr1, arr2) {
        let sumBinary: Int = Int(String(a, radix: 2))! + Int(String(b, radix: 2))!
        
        var resultString: String = ""
        for b in String(sumBinary) {
            if String(b) == "0" {
                resultString += " "
            } else {
                resultString += "#"
            }
        }
        
        if (n - resultString.count) > 0 {
            resultString = String(repeating: " ", count: (n - resultString.count)) + resultString
        }
        
        resultArr.append(resultString)
    }
    return resultArr
}
