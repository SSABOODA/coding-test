// [3차] 압축
// https://school.programmers.co.kr/learn/courses/30/lessons/17684

func checkWorkInDict(_ w: String, _ c: String, _ dict: [String:Int]) -> Bool {
    return dict.contains { $0.key == w+c }
}

func solution(_ msg:String) -> [Int] {
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var wordDict = Dictionary(uniqueKeysWithValues: zip(alphabet, 1...alphabet.count))
    
    var message = msg.map { String($0) }
    var indexArr = [Int]()
    
    var w: String = !message.isEmpty ? message.removeFirst() : ""
    var c: String = !message.isEmpty ? message.removeFirst() : ""
    
    while true {
        
        if !w.isEmpty && c.isEmpty {
            indexArr.append(wordDict[w]!)
            break
        }
        
        if !checkWorkInDict(w, c, wordDict) {
            // 사전에 없다면
            indexArr.append(wordDict[w]!)
            wordDict[w+c] = wordDict.count + 1
            
            if message.isEmpty {
                w = c
                c = ""
                continue
            } else {
                w = c
                c = message.removeFirst()
                continue
            }
            
        } else {
            // 사전에 있다면
            w += c
            c =  !message.isEmpty ? message.removeFirst() : ""
            continue
        }
    }
    return indexArr
}
