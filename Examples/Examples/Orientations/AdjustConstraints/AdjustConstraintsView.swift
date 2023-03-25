//
//  AdjustConstraintsView.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 25.03.2023.
//

import UIKit

final class AdjustConstraintsView: UIViewController {
    
    var stackView: UIStackView
    let blueView = AdjustConstraintsBlueView()
    
    init() {
        stackView = makeStackView(withOrientation: .vertical)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        blueView.adjustConstraints()
        
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
            stackView.axis = .horizontal
        } else {
            print("Portrait")
            stackView.axis = .vertical
        }
    }
    
    func setupViews() {
        navigationItem.title = "Adjust Constraints"
        
        let redView = RedView()
        
        stackView.addArrangedSubview(redView)
        stackView.addArrangedSubview(blueView)
        
        view.addSubview(stackView)
        
        redView.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
        redView.widthAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
