// 서울에서 김서방 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/12919

func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
}