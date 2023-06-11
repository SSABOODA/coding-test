// 2016년
// https://school.programmers.co.kr/learn/courses/30/lessons/12901

func solution(_ a:Int, _ b:Int) -> String {
    let dayOfTheWeek = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    
    let monthOfEndDay: Dictionary<Int, Int> = [
        1: 31,
        2: 29,
        3: 31,
        4: 30,
        5: 31,
        6: 30,
        7: 31,
        8: 31,
        9: 30,
        10: 31,
        11: 30,
        12: 31
    ]
    
    let total = monthOfEndDay.map { $0.value }.reduce(0, +)
    
    var month: Int = 1
    var day: Int = 0
    var week: String = ""
    
    var firstWeekIndex = dayOfTheWeek.firstIndex(of: "THU")!

    for i in 1...total {
        
        if month == a && day == b {
            break
        }
        
        day += 1
        firstWeekIndex += 1
        week = dayOfTheWeek[firstWeekIndex % 7]
                
        var nextMonthTrigger = false
        
        if month == 1 && day == 31 {
            nextMonthTrigger = true
        } else if month == 2 && day == 29 {
            nextMonthTrigger = true
        } else if month == 3 && day == 31 {
            nextMonthTrigger = true
        } else if month == 4 && day == 30 {
            nextMonthTrigger = true
        } else if month == 5 && day == 31 {
            nextMonthTrigger = true
        } else if month == 6 && day == 30 {
            nextMonthTrigger = true
        } else if month == 7 && day == 31 {
            nextMonthTrigger = true
        } else if month == 8 && day == 31 {
            nextMonthTrigger = true
        } else if month == 9 && day == 30 {
            nextMonthTrigger = true
        } else if month == 10 && day == 31 {
            nextMonthTrigger = true
        } else if month == 11 && day == 30 {
            nextMonthTrigger = true
        } else if month == 12 && day == 31 {
            nextMonthTrigger = true
        }
    
        if nextMonthTrigger {
            month += 1
            day = 1
            firstWeekIndex += 1
            week = dayOfTheWeek[firstWeekIndex % 7]
        } 
    }
    
    return week
}
