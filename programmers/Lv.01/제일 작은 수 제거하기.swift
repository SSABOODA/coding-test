// 제일 작은 수 제거하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12935

func solution(_ arr:[Int]) -> [Int] {
    var newArr = arr
    newArr.remove(at: newArr.firstIndex(of: newArr.min()!)!)
    return newArr == [] ? [-1] : newArr
}