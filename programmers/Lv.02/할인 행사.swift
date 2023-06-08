// 할인 행사
// https://school.programmers.co.kr/learn/courses/30/lessons/131127

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    
    let myProduct = Dictionary(uniqueKeysWithValues: zip(want, number))
    
    var result: Int = 0
    for i in 0..<discount.count {
        
        var newMyProduct = myProduct
        
        var endIdx: Int = i + 9
        if i+9 > discount.count - 1 {
            endIdx = discount.endIndex - 1
        }
        
        var checkZero: Int = 0
        for j in discount[i...endIdx] {
            
            if newMyProduct[j] != nil {
                newMyProduct[j]! -= 1
                if newMyProduct[j]! == 0 {
                    checkZero += 1
                }
            }
        }
        
        if checkZero == want.count {
            result += 1
        }
    }
    return result
}
