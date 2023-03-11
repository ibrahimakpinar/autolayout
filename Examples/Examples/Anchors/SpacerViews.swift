//
//  SpacerViews.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 11.03.2023.
//

import UIKit

final class SpacerViews: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        // Create Controls
        
        let leadingGuide = UILayoutGuide()
        let okButton = makeButton(withText: "OK", color: .darkBlue)
        let middleGuide = UILayoutGuide()
        let cancelButton = makeButton(withText: "Cancel", color: .darkGreen)
        let trailingGudie = UILayoutGuide()
        
        view.addLayoutGuide(leadingGuide)
        view.addSubview(okButton)
        view.addLayoutGuide(middleGuide)
        view.addSubview(cancelButton)
        view.addLayoutGuide(trailingGudie)
        
        let margins = view.layoutMarginsGuide
        
        // leading guide
        margins.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor).isActive = true
        leadingGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor).isActive = true
        
        // middle guide
        okButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor).isActive = true
        middleGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor).isActive = true
        
        // trailing guide
        cancelButton.trailingAnchor.constraint(equalTo: trailingGudie.leadingAnchor).isActive = true
        trailingGudie.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        // OK button equal widths
        okButton.widthAnchor.constraint(equalTo: cancelButton.widthAnchor).isActive = true
        
        // spacer equal widths
        leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor).isActive = true
        leadingGuide.widthAnchor.constraint(equalTo: trailingGudie.widthAnchor).isActive = true
        
        // vertical position
        NSLayoutConstraint.activate([
            leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            trailingGudie.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            okButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
