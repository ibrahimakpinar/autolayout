//
//  AppDelegate.swift
//  SpotifyPlayer
//
//  Created by ibrahim AKPINAR on 12.03.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        
        let navigationController = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = navigationController
        
        return true
    }
}

