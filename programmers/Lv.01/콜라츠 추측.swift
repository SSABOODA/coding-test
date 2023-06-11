// 콜라츠 추측
// https://school.programmers.co.kr/learn/courses/30/lessons/12943

func solution(_ num:Int) -> Int {
    if num == 1 { return 0 }
    var n: Int = num
    
    for i in 1...500 {
        
        if n % 2 == 0 {
            n /= 2
        } else {
            n = (n * 3) + 1
        }
        
        if n == 1 { return i }
    }
    return -1
}