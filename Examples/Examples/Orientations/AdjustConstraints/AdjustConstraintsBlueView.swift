//
//  AdjustContraintsBlueView.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 25.03.2023.
//

import UIKit

final class AdjustConstraintsBlueView: UIView {
    var topAnchorConstraint = NSLayoutConstraint()
    var centerYAnchorConstraint = NSLayoutConstraint()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .blue
        
        let label = makeLabel(withText: "Adjusting contraints", size: 24)
        
        addSubview(label)
        
        // Static constraints
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        // Dynamic constraints
        topAnchorConstraint = label.topAnchor.constraint(equalTo: topAnchor, constant: 8)
        centerYAnchorConstraint = label.centerYAnchor.constraint(equalTo: centerYAnchor)
        
        adjustConstraints()
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 100)
    }
    
    func adjustConstraints() {
        if UIApplication.shared.statusBarOrientation.isPortrait {
            topAnchorConstraint.isActive = true
            centerYAnchorConstraint.isActive = false
        } else {
            topAnchorConstraint.isActive = false
            centerYAnchorConstraint.isActive = true
        }
    }
}

