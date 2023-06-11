// 핸드폰 번호 가리기
// https://school.programmers.co.kr/learn/courses/30/lessons/12948

func solution(_ phoneNumber:String) -> String {
    var p: [String] = phoneNumber.map {String($0)}
    
    if p.count == 4 {
        return phoneNumber
    }
    
    let replaceIndex = p.count - 5
    
    p.replaceSubrange( 0...replaceIndex, with: String(repeating: "*", count: replaceIndex + 1).map {String($0)} )    
    return p.joined()
}