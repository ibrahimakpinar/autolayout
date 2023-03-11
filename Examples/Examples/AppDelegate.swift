//
//  AppDelegate.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 11.03.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        let anchorLabs = [
            Lab(name: "Basic Anchors", viewController: BasicAnchors()),
            Lab(name: "Safe Area Guide", viewController: SafeAreaGuide()),
            Lab(name: "Layout Margins", viewController: LayoutMargins()),
            Lab(name: "Spacer View Guide", viewController: SpacerViews()),
            Lab(name: "Readable Content Guide", viewController: ReadableContentGuide())
        ]
        
        let anchorViewController = LabViewController(labs: anchorLabs, navBarTitle: "Anchors")
        
        let rootLabs = [
            Lab(name: "Anchors", viewController: anchorViewController)
        ]
        
        let rootViewController = LabViewController(labs:rootLabs, navBarTitle: "Examples")
        let navigatorController = UINavigationController(rootViewController: rootViewController)
        
        window?.rootViewController = ReadableContentGuide()
        return false
    }
}

