//
//  CalculatorView.swift
//  Calculator
//
//  Created by khayal on 24.08.22.
//

import Core

public protocol CalculatorViewDelegate {
    func select()
    func select(style: ButtonStyle, completion: @escaping (String)->())
}

public class CalculatorView: ViewController<CalculatorViewItem> {
    
    @IBOutlet weak var label: Label!
    
    public var delegate: CalculatorViewDelegate?
    
    public convenience init (_ delegate: CalculatorViewDelegate?) {
        self.init()
        self.delegate = delegate
    }
    
    @IBAction func selectNumber(_ sender: Button) {
        delegate?.select(style: sender.style,
                         completion: weakify(self) {
            $0.label.text = $1
        })
    }
    
    @IBAction func selectInfo(_ sender: Button) {
        delegate?.select()
    }
}

