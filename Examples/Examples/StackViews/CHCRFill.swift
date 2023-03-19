//
//  CHCRFill.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 14.03.2023.
//

import UIKit

final class CHCRFill: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "CHCR Fill"
        
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fill
        
        let bigLabel = makeLabel(withText: "Big", size: 128, color: .darkYellow)
        let medLabel = makeLabel(withText: "Med", size: 64, color: .darkOrange)
        let smlLabel = makeLabel(withText: "Sml", size: 32, color: .darkGreen)
        
        stackView.addArrangedSubview(medLabel)
        stackView.addArrangedSubview(bigLabel)
        stackView.addArrangedSubview(smlLabel)
        
        view.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        bigLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 248), for: .vertical)
    }
}
