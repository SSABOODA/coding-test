// 주차 요금 계산
// https://school.programmers.co.kr/learn/courses/30/lessons/92341

import Foundation

func getMinute(_ time: String) -> Int {
    
    let t = time.components(separatedBy: ":")
    return (Int(t[0])! * 60) + Int(t[1])!
}

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    let baseTime:Int = fees[0]
    let basePrice:Int = fees[1]
    let unitTime:Int = fees[2]
    let unitPrice:Int = fees[3]
    
    var parkingInfo = Dictionary<String, Int>()
    
    for record in records {
        let r = record.components(separatedBy: " ")
        
        if r[2] == "IN" {
            if parkingInfo[r[1]] == nil {
                parkingInfo[r[1]] = 0
            }
            parkingInfo[r[1]]! += getMinute(r[0])
        } else {
            parkingInfo[r[1]]! -= getMinute(r[0])
        }
    }
    
    var result: [Int] = []
    
    let sortedVehicleNumber = parkingInfo.sorted { $0.key < $1.key }
    for (k, v) in sortedVehicleNumber {
        var vehicleNumber = k
        var usageTime = v
        if usageTime >= 0 {
            usageTime -= getMinute("23:59")
        }
        
        if -usageTime <= baseTime {
            result.append(basePrice)
        } else {
            let calPrice = basePrice + Int(ceil(Double(-usageTime - baseTime) / Double(unitTime)) * Double(unitPrice))
            result.append(calPrice)
        }
    }
    return result
}
