// [3차] 방금그곡
// https://school.programmers.co.kr/learn/courses/30/lessons/17683

func convertTime(_ time:String) -> Int {
    var resultTime:Int = 0
    let t = time.components(separatedBy: ":")
    resultTime += Int(t[0])! * 60
    resultTime += Int(t[1])!
    return resultTime
}

func convertSheetMusic(_ s:String) -> [String] {
    var s = Array(s)
    var arr = [String]()
    
    var temp: String = ""
    for i in 0..<s.count {
        temp += String(s[i])
        if i < (s.count - 1) {
            if i+1 == s.count { break }
            if s[i+1] == "#" { continue }
        }
        arr.append(temp)
        temp = ""
    }
    return arr
}

func checkMatchSheetMusic(_ sheetMusic:String, _ minute:Int) -> String {
    var s = convertSheetMusic(sheetMusic)
    var fullSheetMusic = [String]()
    for i in 0..<minute {
        let index = i % s.count
        fullSheetMusic.append(s[index])
    }
    return fullSheetMusic.joined()
}

func solution(_ m:String, _ musicinfos:[String]) -> String {
    
    let m = m
        .replacingOccurrences(of: "C#", with: "c")
        .replacingOccurrences(of: "D#", with: "d")
        .replacingOccurrences(of: "F#", with: "f")
        .replacingOccurrences(of: "G#", with: "g")
        .replacingOccurrences(of: "A#", with: "a")
    
    var result: [(title: String, time: Int)] = []
    for info in musicinfos {
        let arr = info.components(separatedBy: ",")
        let title = arr[2]
        let sheetMusic = arr[3]
            .replacingOccurrences(of: "C#", with: "c")
            .replacingOccurrences(of: "D#", with: "d")
            .replacingOccurrences(of: "F#", with: "f")
            .replacingOccurrences(of: "G#", with: "g")
            .replacingOccurrences(of: "A#", with: "a")
        
        let minute = convertTime(arr[1]) - convertTime(arr[0])
        let str = checkMatchSheetMusic(sheetMusic, minute)
        if str.contains(m) {
            result.append((title, minute))
        }
    }
    return result.max {$0.time < $1.time}?.title ?? "(None)"
}
