// https://www.acmicpc.net/problem/2884

let time = readLine()!.split(separator: " ").map { Int($0)! }

let hour = time[0]
let minute = time[1]

let alarmMinute = minute - 45

if alarmMinute < 0 {
    if hour == 0 {
        print("23 \(60-(abs(alarmMinute)))")
    } else {
        print("\(hour-1) \(60-(abs(alarmMinute)))")
    }
} else {
    print("\(hour) \(alarmMinute)")
}