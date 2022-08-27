//
//  Digit.swift
//  Calculator
//
//  Created by Ricardo Montemayor on 18/07/22.
//

import Foundation

public enum Digit: String, CaseIterable {
    case zero  = "0"
    case one   = "1"
    case two   = "2"
    case three = "3"
    case four  = "4"
    case five  = "5"
    case six   = "6"
    case seven = "7"
    case eight = "8"
    case nine  = "9"
}

struct ArithmeticExpression: Equatable {
    var number: Decimal
    var operation: Operation
    
    func evaluate(with secondNumber: Decimal) -> Decimal {
        switch operation {
        case .addition:
            return number + secondNumber
        case .subtraction:
            return number - secondNumber
        case .multiplication:
            return number * secondNumber
        case .division:
            return number / secondNumber
        case _:
            return -1
        }
    }
}
