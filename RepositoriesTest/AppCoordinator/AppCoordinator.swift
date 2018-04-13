//
//  AppCoordinator.swift
//  DesignLibrary
//
//  Created by Andrew Turkin on 25.03.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

import UIKit

// implements navigation. Instantiates ContextTransitionAnimator to show vehicle info as a context view in map.
class AppCoordinator: Coordinator {
    fileprivate let navigationController: UINavigationController
    
    init(with navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        showFirstViewController()
    }
    
    func showFirstViewController() {
        // add view controller to VC hierarchy
    }
}
