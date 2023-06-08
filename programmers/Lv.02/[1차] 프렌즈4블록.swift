// [1차] 프렌즈4블록
// https://school.programmers.co.kr/learn/courses/30/lessons/17679

func checkBlock(_ i: Int, _ j: Int, _ v: String, _ block: [[String]], _ m: Int, _ n: Int) -> Bool {
        
    if (i+1 == m) || (j+1 == n) { return false }
    if (block[i][j+1] == v) && (block[i+1][j] == v) && (block[i+1][j+1] == v) { return true }
    return false
}

func adjustCurrentPosition(_ board: [[String]], _ m: Int) -> [[String]] {
    
    var b = board
    
    while true {
        var changePositionNum: Int = 0
        for i in 0..<b.count {
            for j in 0..<b[0].count {
                if i+1 == m { break }
                if (b[i][j] != "1") && (b[i+1][j] == "1") {
                    let tempA = b[i][j]
                    b[i][j] = "1"
                    b[i+1][j] = tempA
                    changePositionNum += 1
                    continue
                }
            }
        }
        
        if changePositionNum == 0 {
            for (i1, v1) in b.enumerated() {
                for (i2, v2) in v1.enumerated() {
                    if v2 == "1" {
                        b[i1][i2] = "0"
                    }
                }
            }
            break
        }
    }
    
    return b
}

func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    
    var board = board.map { $0.map { String($0) } }
    var newBoard = board
    while true {
        
        for (index1, value1) in board.enumerated() {
            for (index2, value2) in  value1.enumerated() {
                if value2 != "0" {
                    let r = checkBlock(index1, index2, value2, board, m, n)
                    if r {
                        newBoard[index1][index2] = "1"
                        newBoard[index1][index2+1] = "1"
                        newBoard[index1+1][index2] = "1"
                        newBoard[index1+1][index2+1] = "1"
                    }
                }
            }
        }
        
        let successCount = newBoard.flatMap { $0 }.filter { $0 == "1" }.count
        if successCount == 0 { break }
        
        board = adjustCurrentPosition(newBoard, m)
        newBoard = board
    }
    
    let result = newBoard.flatMap { $0 }.filter { $0 == "0" }.count
    return result
}