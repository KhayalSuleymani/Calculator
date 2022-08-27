//
//  CalculatorViewItem.swift
//  Calculator
//
//  Created by khayal on 24.08.22.
//

import Core
import Lwift

public class CalculatorViewState: ViewState {
    var calculator: Calculator = .init()
}

extension CalculatorViewState: CalculatorViewDelegate {
    public func didSelect(style: ButtonStyle,
                          _ completion: @escaping (String)->()) {
        switch style {
        case .digit(let digit):
            calculator.setDigit(digit)
        case .operation(let operation):
            switch operation {
            case .addition, .multiplication, .division, .subtraction:
                calculator.setOperation(operation)
            case .equals:
                calculator.evaluate()
            case .clear, .allClear:
                calculator.allClear()
            case _:
                break
            }
        case _:
            break
        }
        completion(calculator.title)
    }
}
