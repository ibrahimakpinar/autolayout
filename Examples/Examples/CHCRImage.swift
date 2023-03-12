//
//  CHCRImage.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 12.03.2023.
//

import UIKit

final class CHCRImage: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let image = makeImageView(named: "rush")
        let label = makeLabel(withText: "Title")
        let button = makeButton(withText: "Get started")
        
        view.addSubview(image)
        view.addSubview(label)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 8),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 300),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        image.setContentHuggingPriority(.defaultLow, for: .vertical)
        image.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
    }
}
