// 시저 암호
// https://school.programmers.co.kr/learn/courses/30/lessons/12926

func solution(_ s:String, _ n:Int) -> String {
    
    let uppercaseArr: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    let lowercaseArr: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    var result: String = ""
    for i in s {
        if i.isWhitespace {
            result += String(i)
        } else {
            if uppercaseArr.contains(String(i)) {
                result += uppercaseArr[Int(uppercaseArr.firstIndex(of: String(i))!) + n]
            } else {
                result += lowercaseArr[Int(lowercaseArr.firstIndex(of: String(i))!) + n]
            }
        }
    }
    return result
}
