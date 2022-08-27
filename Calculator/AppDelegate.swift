//
//  AppDelegate.swift
//  Calculator
//
//  Created by khayal on 24.08.22.
//

import UIKit


@main class Delegate: UIResponder, UIApplicationDelegate {
    
    lazy var window: UIWindow? = .init()
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let c = Coordinator(initialRoute: .`init`)
        c.setRoot(for: window!)
        return true
    }
}
