// 이모티콘 할인행사
// https://school.programmers.co.kr/learn/courses/30/lessons/150368

var finalEmoticonPlus = 0
var finalTotalPrice = 0
var user: [[Int]] = []
var emoticon: [Int] = []
var salePer = [10, 20, 30, 40]

func getResultBySalesComb(_ arr: [Int]) {
    
    var emoticonPlus:Int = 0
    var totoalPrice:Int = 0
    
    for u in user {
        let uPer = u[0]
        let uPrice = u[1]
        
        var tempPrice:Int = 0
        for (per, e) in zip(arr, emoticon) {
            if per < uPer { continue }
            let cal = Int(Double(e) * Double(100-per)/100.0)
            tempPrice += cal
            
            if tempPrice >= uPrice {
                emoticonPlus += 1
                tempPrice = 0
                break
            }
        }
        totoalPrice += tempPrice
    }
    
    
    if finalEmoticonPlus < emoticonPlus {
        finalEmoticonPlus = emoticonPlus
        finalTotalPrice = totoalPrice
    } else if finalEmoticonPlus == emoticonPlus {
        if finalTotalPrice < totoalPrice {
            finalEmoticonPlus = emoticonPlus
            finalTotalPrice = totoalPrice
        }
    }
}

func dfs(index: Int, arr: [Int], max: Int, sales: [Int]) {
    if index == max {
        getResultBySalesComb(arr)
        return
    }
    for sale in sales {
        dfs(index: index + 1, arr: arr + [sale], max: max, sales: sales)
    }
}

func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
    user = users.sorted { $0[0] > $1[0] }
    emoticon = emoticons
    let sales = salePer.filter { $0 >= user.last![0] }
    
    dfs(index: 0, arr: [], max: emoticons.count, sales: sales)
    
    return [finalEmoticonPlus, finalTotalPrice]
}
