//
//  LayoutMargins.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 11.03.2023.
//

import UIKit

final class LayoutMargins: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let redView = makeView(color: .systemRed)
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(redView)
        
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            redView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            redView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            redView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
        ])
    }
}
