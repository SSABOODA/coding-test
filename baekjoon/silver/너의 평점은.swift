// https://www.acmicpc.net/problem/25206

let ratingTable = [
    "A+": 4.5,
    "A0": 4.0,
    "B+": 3.5,
    "B0": 3.0,
    "C+": 2.5,
    "C0": 2.0,
    "D+": 1.5,
    "D0": 1.0,
    "F": 0.0,
]

var totalScore:Double = 0.0
var r:Double = 0.0
while let grade = readLine()?.split(separator: " ") {
    if grade.isEmpty { break }
    let gradeCard = grade.map { String($0) }
    
    let _ = gradeCard[0]
    let score = gradeCard[1]
    let grade = gradeCard[2]
    
    if grade == "P" {
        continue
    }
    
    totalScore += Double(score)! * ratingTable[grade]!
    r += Double(score)!
}

print(totalScore/r)