// 무인도 여행
// https://school.programmers.co.kr/learn/courses/30/lessons/154540

import Foundation

func solution(_ maps:[String]) -> [Int] {
    
    var row = maps[0].count
    var col = maps.count
    
    var map = [[Character]]()
    maps.map { map.append(Array($0)) }
    
    var visited = [[Bool]](repeating: Array(repeating: false, count: row ), count: col )
    
    func dfs(_ x:Int, _ y:Int) -> Int {
        
        if x < 0 || y < 0 || (x > col-1) || (y > row-1) { return 0 }
        
        if visited[x][y] == true { return 0 }
        
        if map[x][y] == "X" {
            visited[x][y] = true
            return 0
        } 
        
        visited[x][y] = true
        var food = Int(String(map[x][y]))!
        return food + dfs(x-1, y) + dfs(x+1, y) + dfs(x, y-1) + dfs(x, y+1)        
    }
    
    var result = [Int]()
    
    for i in 0..<col {
        for j in 0..<row {
            var total = dfs(i, j)
            if total > 0 {
                result.append(total)
            }
        }
    }
    return result.isEmpty ? [-1] : result.sorted(by: <)
}