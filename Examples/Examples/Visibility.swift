//
//  Visibility.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 24.03.2023.
//

import UIKit

final class Visiblity: UIViewController {

    let label2 = makeLabel(withText: "Now you don't", size: 32, color: .red)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Visibility"
        
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fillProportionally
        
        let label1 = makeLabel(withText: "Now you see me", size: 32)
        let button = makeButton(withText: "Show/Hide", size: 32)
        
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(button)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        button.addTarget(self, action: #selector(buttonPressed), for: .primaryActionTriggered)
    }
}

private extension Visiblity {
    
    @objc func buttonPressed(sender: UIButton!) {
        label2.isHidden = !label2.isHidden
    }
}
