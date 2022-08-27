//
//  Button.swift
//  Calculator
//
//  Created by khayal on 24.08.22.
//

import UIKit

open class Button: UIButton, TitleRepresentable {
   
    public var title: String {
        guard let title = titleLabel?.text else { return "" }
        return title
    }
    
    public var style: ButtonStyle {
        if let digit = Digit(rawValue: title) {
            return .digit(digit)
        }
        if let operation = Operation(rawValue: title) {
            return .operation(operation)
        }
        return .none
    }
}

