// 다리를 지나는 트럭
// https://school.programmers.co.kr/learn/courses/30/lessons/42583

import Foundation

func solution(_ bridgeLength:Int, _ weight:Int, _ truckWeights:[Int]) -> Int {
    var standbyTruck = truckWeights
    
    var time: Int = 0
    var passedTruck = [Int]()
    var crossingTruck = [Int](repeating: 0, count: bridgeLength)
    var bridgeWeight: Int = 0
    
    while true {    
        let t = crossingTruck.removeFirst()
        bridgeWeight -= t
        if t > 0 { passedTruck.append(t) }
        
        if !standbyTruck.isEmpty {
            let s = standbyTruck.first!
            if bridgeWeight + s <= weight {
                let passingTruck = standbyTruck.removeFirst()
                crossingTruck.append(passingTruck)
                bridgeWeight += s
            } else {
                crossingTruck.append(0)
            }
        }
        
        time += 1
        
        if standbyTruck.isEmpty && (passedTruck.count == truckWeights.count) { break }
    }
    return time
}
