// [3차] 파일명 정렬
// https://school.programmers.co.kr/learn/courses/30/lessons/17686

struct File {
    var id: Int
    var HEAD: String
    var NUMBER: String
    var TAIL: String
}

func solution(_ files:[String]) -> [String] {
    
    var array = [File]()
    
    var head: String = ""
    var number: String = ""
    var tail: String = ""
    
    var mark: [String] = []
    for (idx, file) in files.enumerated() {
        for f in file {
            if mark.contains("t") {
                tail += String(f)
                continue
            }
            
            if f.isNumber {
                
                if (number.count <= 5) && (!mark.contains("t")) {
                    number += String(f)
                }
                if !mark.contains("i") { mark.append("i") }
                
            } else {
                if (mark.count != 0) && (mark[mark.endIndex-1] == "i") {
                    tail += String(f)
                    if !mark.contains("t") { mark.append("t") }
                    continue
                }
                head += String(f)
                if !mark.contains("s") { mark.append("s") }
            }
        }
        array.append(File(id: idx, HEAD: head.lowercased(), NUMBER: number, TAIL: tail))
        head = ""
        number = ""
        tail = ""
        mark = []
    }

    let sortedArr = array.sorted { (f, s) in
        if f.HEAD != s.HEAD {
            return f.HEAD < s.HEAD
        } else {
            if Int(f.NUMBER)! != Int(s.NUMBER)! {
                return Int(f.NUMBER)! < Int(s.NUMBER)!
            } else {
                return f.id < s.id
            }
        }
    }

    var result = [String]()
    sortedArr.map { result.append(files[$0.id]) }

    return result
}
