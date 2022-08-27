//
//  Coordinator.swift
//  Calculator
//
//  Created by khayal on 24.08.22.
//

import Core
import XCoordinator

public enum ApplicationRoute: Route {
    case `init`, calculator, info
}

public class Coordinator: NavigationCoordinator<ApplicationRoute> {
    public override func prepareTransition(for route: ApplicationRoute) -> NavigationTransition {
        switch route {
        case .`init`:
            return .route(.calculator, on: self)
        case .calculator:
            let m  = CalculatorViewItem()
            let v  = CalculatorView(m)
            let _  = CalculatorViewModel(m)
                .subscribe(from: v)
            m.didSelect = {
                self.trigger(.info)
            }
            return .show(v)
        case .info:
            let m = DetailViewItem()
            let v = DetailView()
            let _ = DetailViewModel(m)
                .subscribe(from: v)
            return .present(v)
        }
    }
}
