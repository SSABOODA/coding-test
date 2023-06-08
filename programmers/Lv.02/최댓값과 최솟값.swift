// 최댓값과 최솟값
// https://school.programmers.co.kr/learn/courses/30/lessons/12939

func solution(_ s:String) -> String {
    var splitedArr = s.components(separatedBy: " ").map { Int($0)! }
    return "\(splitedArr.min()!) \(splitedArr.max()!)"
}
