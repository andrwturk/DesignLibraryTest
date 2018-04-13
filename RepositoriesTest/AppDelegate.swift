//
//  AppDelegate.swift
//  RepositoriesTest
//
//  Created by Andrew Turkin on 13.04.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let navigationController = UINavigationController()
        appCoordinator = AppCoordinator(navigationController)
        window?.rootViewController = navigationController
        appCoordinator.start()
        return true
    }
}

