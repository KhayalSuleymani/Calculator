//
//  Coordinator.swift
//  Core
//
//  Created by khayal on 26.08.22.
//

import XCoordinator

extension NavigationCoordinator {
    public func trigger (_ route: RouteType) {
        weakRouter.trigger(route)
    }
}
