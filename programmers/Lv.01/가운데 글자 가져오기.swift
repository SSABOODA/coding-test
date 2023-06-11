// 가운데 글자 가져오기
// https://school.programmers.co.kr/learn/courses/30/lessons/12903

func solution(_ s: String) -> String {
    
    if Array(s).count % 2 == 0 { 
        // 짝수
        return String(Array(s)[(s.count/2)-1...(s.count/2)])
    } else { 
        // 홀수
        return String(Array(s)[s.count / 2])
    }
}