//
//  ArithmeticOperation.swift
//  Calculator
//
//  Created by Ricardo Montemayor on 18/07/22.
//

import Foundation

public enum Operation: String, CaseIterable {
    
    // MARK: Arithmetic
    case addition = "+"
    case subtraction = "−"
    case multiplication = "×"
    case division = "÷"
    
    // MARK: FUNCTIONAL
    case negative = "±"
    case percent  = "%"
    case decimal  = "."
    case equals   = "="
    case allClear = "AC"
    case clear    = "C"
}
