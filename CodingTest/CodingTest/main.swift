//
//  main.swift
//  CodingTest
//
//  Created by 한성봉 on 8/13/24.
//

import Foundation

let inputNumber = Int(readLine()!)!
(1...9).forEach {
    print("\(inputNumber) * \($0) = \(inputNumber * $0)")
}
