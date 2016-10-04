//
//  TrackingSystem.swift
//  NavigationExample
//
//  Created by Maksim Bazarov on 23/09/2016.
//  Copyright © 2016 Bonial International GmbH. All rights reserved.
//

import UIKit
import NavigationKit


struct TrackingIdentity {
    let trackingId: Int
    let name: String
}

///
protocol Trackable {
    func identity() -> TrackingIdentity
}

///
protocol TrackingSystem: NavigationDelegate {

    func setupNavigationDelegateFor(_ navigation: NavigationKit)

}
