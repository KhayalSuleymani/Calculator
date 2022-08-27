//
//  ButtonType.swift
//  Calculator
//
//  Created by Ricardo Montemayor on 18/07/22.
//

import Foundation
import SwiftUI

public enum ButtonStyle: Hashable {
    case none
    case digit(_ digit: Digit)
    case operation(_ operation: Operation)
}
