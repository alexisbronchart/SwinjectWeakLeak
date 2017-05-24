//
//  AppDelegate.swift
//  DependencyTest
//
//  Created by Alexis Bronchart on 22/05/2017.
//  Copyright © 2017 Vente-Exclusive.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var devTest: DevTestProtocol?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.devTest = DI.resolve(DevTestProtocol.self)!
        self.devTest = nil
        
        return true
    }
}
