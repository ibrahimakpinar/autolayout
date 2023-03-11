//
//  SafeAreaGuide.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 11.03.2023.
//

import UIKit

final class SafeAreaGuide: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

    func setupViews() {
        let topLabel = makeLabel(withText: "top", size: 32)
        let bottomLabel = makeLabel(withText: "bottom", size: 32)
        
        let leadingLabel = makeLabel(withText: "leading", size: 32)
        let trailingLabel = makeLabel(withText: "trailing", size: 32)
        
        view.addSubview(topLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        view.addSubview(bottomLabel)
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            leadingLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            trailingLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
