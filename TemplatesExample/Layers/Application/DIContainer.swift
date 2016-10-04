//
//  DIContainer.swift
//  NavigationExample
//
//  Created by Maksim Bazarov on 23/09/2016.
//  Copyright © 2016 Bonial International GmbH. All rights reserved.
//

import NavigationKit

final class DIContainer {

    public var navigation: NavigationKit
    public var trackingSystem: TrackingSystem
    
    public init(navigation: NavigationKit) {
        /// Injection is happens here >:[
        
        self.navigation = navigation
        self.trackingSystem = LogTrackingSystem()
        self.trackingSystem.setupNavigationDelegateFor(self.navigation)
        
    }
}
