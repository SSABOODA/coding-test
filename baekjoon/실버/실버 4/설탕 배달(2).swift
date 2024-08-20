let input = Int(readLine()!)!

func calculateMinimumSugarBag(count: Int) -> Int {
    var sugarBagCountArray = [Int]()
    
    for i in 0..<(count / 5)+1 {
        let remain = count - (5 * i)
        if (remain % 3) == 0 {
            sugarBagCountArray.append( i + (remain / 3) )
        }
    }
    
    if sugarBagCountArray.isEmpty {
        return -1
    }
    return sugarBagCountArray.min()!
}