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
        
        let intrinsicContentSizeLabs = [
            Lab(name: "Override Label", viewController: OverrideLabel()),
            Lab(name: "CHCR - Form", viewController: CHCRForm()),
            Lab(name: "CHCR - Image", viewController: CHCRImage())
        ]
        
        let distributionLabs = [
            Lab(name: "Fill", viewController: Fill()),
            Lab(name: "Fill Equally", viewController: FillEqually()),
            Lab(name: "Equal Spacing", viewController: EqualSpacing()),
            Lab(name: "Equal Centering", viewController: EqualCentering()),
            Lab(name: "CHCR Fill", viewController: CHCRFill()),
        ]
        
        let distributionViewController = LabViewController(labs: distributionLabs, navBarTitle: "Distributions")
        
        let stackViewLabs = [
            Lab(name: "Distributions", viewController: distributionViewController),
            Lab(name: "Custom", viewController: CustomView()),
            Lab(name: "Scrollable", viewController: ScrollableView()),
            Lab(name: "Padding", viewController: PaddingView()),
            Lab(name: "Spacer", viewController: StackSpacerView())

        ]
        
        let anchorViewController = LabViewController(labs: anchorLabs, navBarTitle: "Anchors")
        let intrinsicViewController = LabViewController(labs: intrinsicContentSizeLabs, navBarTitle: "Intrinsic Content Size")
        let stackViewController = LabViewController(labs: stackViewLabs, navBarTitle: "Stack Views")
        
        let rootLabs = [
            Lab(name: "Anchors", viewController: anchorViewController),
            Lab(name: "Intrinsic Content Size", viewController: intrinsicViewController),
            Lab(name: "Stack Views", viewController: stackViewController),
        ]
        
        let rootViewController = LabViewController(labs:rootLabs, navBarTitle: "Examples")
        let navigatorController = UINavigationController(rootViewController: rootViewController)
        
        window?.rootViewController = navigatorController
        return false
    }
}

