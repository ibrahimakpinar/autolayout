//
//  ScrollableView.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 19.03.2023.
//

import UIKit

final class ScrollableView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Scrollable"
        
        let stackView = makeStackView(withOrientation: .vertical)
        let scrollView = makeScrollView()
        
        scrollView.addSubview(stackView)
        view.addSubview(scrollView)
        
        for _ in (1...40) {
            let row = RowView()
            stackView.addArrangedSubview(row)
            row.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        }
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
