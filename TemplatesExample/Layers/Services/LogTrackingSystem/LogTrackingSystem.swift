//
//  LogTrackingSystem.swift
//  NavigationExample
//
//  Created by Maksim Bazarov on 23/09/2016.
//  Copyright © 2016 Bonial International GmbH. All rights reserved.
//

import UIKit
import NavigationKit

class LogTrackingSystem: TrackingSystem {


    func setupNavigationDelegateFor(_ navigation: NavigationKit) {
        navigation.delegate = self
    }
    
    func viewDidPresent(_ view: UIView) {
        log(view)
    }
    
    func viewControllerDidPresented(_ vc: UIViewController) {
        log(vc)
    }

    func log(_ trackable: Any) {
        if let trackable = trackable as? Trackable {
            print("[TRACKING]: (\(trackable.identity().trackingId)) \(trackable.identity().name) was presented")
        }
    }
    
}
