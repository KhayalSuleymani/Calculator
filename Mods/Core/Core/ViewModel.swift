//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by khayal on 24.08.22.
//

import Lwift
import XCoordinator

public typealias ViewState<Item> = GenericViewState<Item, Error>

open class ViewModel<Item>: Lwift.ViewModel<ViewState<Item>> {
    
    public let item: Item
        
    public init(_ item: Item) {
        self.item = item
        super.init(initialState: .loaded(item))
    }
    
    @discardableResult
    public func change (_ state: ViewState<Item>) -> Self {
        self.state = state
        return self
    }
    
    @discardableResult
    open func fetch () -> Self {        
        self
    }
}
