//
//  Calculator.swift
//  Calculator
//
//  Created by Ricardo Montemayor on 20/07/22.
//

import Foundation

public class Calculator: TitleRepresentable {
    
    public static let single = Calculator()

    // MARK: - PROPERTIES
    private var expression: ArithmeticExpression?
    private var result: Decimal?
    private var carryingNegative: Bool = false
    private var carryingDecimal: Bool = false
    private var carryingZeroCount: Int = 0
    private var pressedClear: Bool = false
    
    private var newNumber: Decimal? {
        didSet {
            guard newNumber != nil else { return }
            carryingNegative = false
            carryingDecimal = false
            carryingZeroCount = 0
            pressedClear = false
        }
    }
    
    // MARK: - COMPUTED PROPERTIES
    public var title: String {
        getNumberString(forNumber: number, withCommas: true)
    }
    
    private var number: Decimal? {
        if pressedClear || carryingDecimal {
            return newNumber
        }
        return newNumber ?? expression?.number ?? result
    }

    // MARK: - OPERATIONS
    
    public func select(_ style: ButtonStyle, _ completion: @escaping (String)->()) {
        switch style {
        case let .digit(d):
            if getNumberString(forNumber: number).contains(".") && d == .zero {
                carryingZeroCount += 1
            } else if (number != nil || d != .zero) {
                let numberString = getNumberString(forNumber: newNumber)
                newNumber = Decimal(string: numberString.appending("\(d.rawValue)"))
            }
        case let .operation(o):
            switch o {
            case .addition, .multiplication, .division, .subtraction:
                guard var number = newNumber ?? result else { return }
                if let existingExpression = expression {
                    number = existingExpression.evaluate(with: number)
                }
                expression = ArithmeticExpression(number: number, operation: o)
                newNumber = nil
            case .equals:
                guard let number = newNumber, let expressionToEvaluate = expression else { return }
                result = expressionToEvaluate.evaluate(with: number)
                expression = nil
                newNumber = nil
            case .clear, .allClear:
                newNumber = nil
                expression = nil
                result = nil
                carryingNegative = false
                carryingDecimal = false
                carryingZeroCount = 0
            case _:
                break
            }
        case _:
            break
        }
        completion(title)
    }
        
    // MARK: - HELPERS

    private func getNumberString(forNumber number: Decimal?, withCommas: Bool = false) -> String {
        var numberString = (withCommas ? number?.formatted(.number) : number.map(String.init)) ?? "0"
        
        if carryingNegative {
            numberString.insert("-", at: numberString.startIndex)
        }
        
        if carryingDecimal {
            numberString.insert(".", at: numberString.endIndex)
        }
        
        if carryingZeroCount > 0 {
            numberString.append(String(repeating: "0", count: carryingZeroCount))
        }
        return numberString
    }
}
