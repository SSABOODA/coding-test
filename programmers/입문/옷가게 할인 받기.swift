// https://school.programmers.co.kr/learn/courses/30/lessons/120818

import Foundation

func solution(_ price:Int) -> Int {

    var discountRate: Double = 0.0

    switch price {
    case ..<100_000:
        discountRate = 0
    case 100_000..<300_000:
        discountRate = 0.05
    case 300_000..<500_000:
        discountRate = 0.1
    case 500_000...:
        discountRate = 0.2
    default:
        break
    }

    return Int(Double(price) * Double((1 - discountRate)))
}
