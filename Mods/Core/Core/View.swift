//
//  ViewController.swift
//  Calculator
//
//  Created by khayal on 24.08.22.
//

import UIKit
import Lwift

open class ViewController<Item>: UIViewController, StatefulView {
    
    public typealias State = GenericViewState<Item, Error>
    
    open func render(state: State) { }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    open var renderPolicy: RenderPolicy {
        .possible
    }
}
