// [카카오 인턴] 키패드 누르기
// https://school.programmers.co.kr/learn/courses/30/lessons/67256

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    let numbers: [String] = numbers.map { String($0) }
    
    let leftArr: [String] = ["1", "4", "7", "*"]
    let rightArr: [String] = ["3", "6", "9", "#"]
    let centerArr: [String] = ["2", "5", "8", "0"]
    
    var leftHandLocation: String = "*"
    var rightHandLocation: String = "#"
    
    var result: String = ""
    
    for num in numbers {
        if leftArr.contains(num) {
            leftHandLocation = num
            result += "L"
        } else if rightArr.contains(num) {
            rightHandLocation = num
            result += "R"
        } else {
            let cDistance = Int(centerArr.firstIndex(of: num)!) // 1
    
            var lDistance = 0
            var leftCompareDistance = 0
            if centerArr.contains(leftHandLocation) {
                lDistance = Int(centerArr.firstIndex(of: leftHandLocation)!)
                leftCompareDistance = abs(lDistance - cDistance)
            } else {
                lDistance = Int(leftArr.firstIndex(of: leftHandLocation)!)
                leftCompareDistance = abs(lDistance - cDistance) + 1
            }
            
            var rDistance = 0
            var rightCompareDistance = 0
            if centerArr.contains(rightHandLocation) {
                rDistance = Int(centerArr.firstIndex(of: rightHandLocation)!)
                rightCompareDistance = abs(rDistance - cDistance)
            } else {
                rDistance = Int(rightArr.firstIndex(of: rightHandLocation)!)
                rightCompareDistance = abs(rDistance - cDistance) + 1
            }

            if leftCompareDistance < rightCompareDistance {
                leftHandLocation = num
                result += "L"
            } else if leftCompareDistance > rightCompareDistance {
                rightHandLocation = num
                result += "R"
            } else {
                // 같은 경우
                if hand == "left" {
                    leftHandLocation = num
                    result += "L"
                } else {
                    rightHandLocation = num
                    result += "R"
                }
            }
        }
    }
    return result
}