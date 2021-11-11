//
//  AppDelegate.swift
//  1145
//
//  Created by Дария Марковская on 15.10.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = ViewController()
        let nvc = UINavigationController(rootViewController: vc)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        return true
    }

}

