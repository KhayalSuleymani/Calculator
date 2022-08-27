//
//  Label.swift
//  Calculator
//
//  Created by khayal on 24.08.22.
//

import UIKit

public protocol TitleRepresentable {
    var title: String { get }
}

open class Label: UILabel, TitleRepresentable {
    public var title: String {
        guard let title = text else { return "" }
        return title
    }
}
