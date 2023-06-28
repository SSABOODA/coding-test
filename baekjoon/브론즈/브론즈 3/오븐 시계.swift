// https://www.acmicpc.net/problem/2525

let time = readLine()!.split(separator: " ").map { Int($0)! }
let durationOfTime = Int(readLine()!)!

let hour = time[0]
let minute = time[1]

let convertHour = (durationOfTime + minute) / 60
let convertMinute = (durationOfTime + minute) % 60

if (hour + convertHour) >= 24 {
    print("\(hour + convertHour - 24) \(convertMinute)")
} else {
    print("\(hour + convertHour) \(convertMinute)")
}