//
//  Constraints.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 24.03.2023.
//

import UIKit

final class Constraints: UIViewController {
    
    var leadingAnchorConstraint = NSLayoutConstraint()
    var trailingAnchorConstraint = NSLayoutConstraint()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Constraints"
        
        let label = makeLabel(withText: "Watch me!", size: 32)
        let button = makeButton(withText: "Left/Right")
        
        view.addSubview(label)
        view.addSubview(button)
        
        leadingAnchorConstraint = label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80)
        trailingAnchorConstraint = label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
        
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80).isActive = true
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        leadingAnchorConstraint.isActive = true
        
        button.addTarget(self, action: #selector(buttonPressed), for: .primaryActionTriggered)
    }
}

private extension Constraints {
    
    @objc func buttonPressed(sender: UIButton!) {
        if leadingAnchorConstraint.isActive {
            leadingAnchorConstraint.isActive = false
            trailingAnchorConstraint.isActive = true
        } else {
            leadingAnchorConstraint.isActive = true
            trailingAnchorConstraint.isActive = false
        }
    }
}
