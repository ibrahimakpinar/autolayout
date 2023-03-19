//
//  CustomView.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 19.03.2023.
//

import UIKit

final class CustomView: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Custom View"
        
        let row = RowView()
        let stackView = makeStackView(withOrientation: .vertical)
        
        stackView.addArrangedSubview(row)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
