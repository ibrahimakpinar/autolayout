//
//  CHCRForm.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 12.03.2023.
//

import UIKit

final class CHCRForm: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let nameLabel = makeLabel(withText: "Name")
        let textField = makeTextField(withPlaceholderText: "Enter name here..")
        
        view.addSubview(nameLabel)
        view.addSubview(textField)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8)
        ])
        
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 8),
            textField.firstBaselineAnchor.constraint(equalTo: nameLabel.firstBaselineAnchor),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
        
        // magic here
        // it retains its intrinsic content size while enabling the textField to stretch
        nameLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
    }
}
