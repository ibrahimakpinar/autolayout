//
//  Constants.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 24.03.2023.
//

import UIKit

final class Constants: UIViewController {
    
    var topAnchorConstraint = NSLayoutConstraint()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Constants"
        
        let label = makeLabel(withText: "Watch me!", size: 32)
        let button = makeButton(withText: "Up/Down")
        
        view.addSubview(label)
        view.addSubview(button)
        
        topAnchorConstraint = label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80)
        topAnchorConstraint.isActive = true
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        button.addTarget(self, action: #selector(buttonPressed), for: .primaryActionTriggered)
    }
}

private extension Constants {
    
    @objc func buttonPressed(sender: UIButton!) {
        if topAnchorConstraint.constant == 80 {
            topAnchorConstraint.constant = 80 * 2
        } else {
            topAnchorConstraint.constant = 80
        }
    }
}
