//
//  MainRouter.swift
//  NavigationExample
//
//  Created by Maksim Bazarov on 26/09/2016.
//  Copyright © 2016 Bonial International GmbH. All rights reserved.
//

import NavigationKit

final class MainRouter: NSObject {

    var tabBarController: NKTabBarController!
    weak var diContainer: DIContainer!
    
    init(usingDIContainer container: DIContainer) {
        tabBarController = NKTabBarController(navigation: container.navigation)
        diContainer = container
    }
    
    public func presentMainWindow() {
        let vc = Test11Assembly.createModule { (module) in
            
        }
        
        diContainer.navigation.presentRootViewController(vc) {}

        //        tabBarController.presentAsRootViewController {}
//       let main = MainScreenAssembly.createModule(usingContainer: diContainer) { (_) in }
//        tabBarController.viewControllers = [main]
//        let test = TestAssembly.createModule { (TestModuleInput) in
//            <#code#>
//        }
    }
}
