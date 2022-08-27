//
//  CalculatorViewItem.swift
//  Calculator
//
//  Created by khayal on 24.08.22.
//

import Core

public class CalculatorViewItem: CalculatorViewDelegate {
    
    public var didSelect: () -> () = { }

    public func select(style: ButtonStyle,
                       completion: @escaping (String)->()) {
        Calculator.single.select(style, completion)
    }
    
    public func select() {
        didSelect()
    }
}
