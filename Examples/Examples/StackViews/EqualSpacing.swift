//
//  EqualSpacing.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 14.03.2023.
//

import UIKit

final class EqualSpacing: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Equal Spacing"
        
        let stackView = makeStackView(withOrientation: .vertical)
        
        stackView.distribution = .equalSpacing
        
        stackView.addArrangedSubview(makeLabel(withText: "Big", size: 128, color: .darkYellow))
        stackView.addArrangedSubview(makeLabel(withText: "Med", size: 64, color: .darkOrange))
        stackView.addArrangedSubview(makeLabel(withText: "Sml", size: 32, color: .darkGreen))
        
        view.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    }
}
