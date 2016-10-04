//
//  AppDelegate.swift
//  NavigationExample
//
//  Created by Maksim Bazarov on 22/09/2016.
//  Copyright © 2016 Bonial International GmbH. All rights reserved.
//

import UIKit
import NavigationKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var diContainer: DIContainer!
    var mainRouter: MainRouter!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let navigation = NavigationKit(window: window!)
        diContainer = DIContainer(navigation: navigation)
        mainRouter = MainRouter(usingDIContainer: diContainer)
        mainRouter.presentMainWindow()
        
        return true
    }

}

