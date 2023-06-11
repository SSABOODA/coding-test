// 행렬의 덧셈
// https://school.programmers.co.kr/learn/courses/30/lessons/12950

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var resultArr: [[Int]] = []
    for (a, b) in zip(arr1, arr2) {
        
        var lineArr: [Int] = []
        for i in 0...(a.count - 1) {
            lineArr.append(a[i] + b[i])
        }
        
        resultArr.append(lineArr)
        lineArr = []
    }
    return resultArr
}