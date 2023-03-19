//
//  RowView.swift
//  StackViewChallange
//
//  Created by ibrahim AKPINAR on 19.03.2023.
//

import UIKit

final class RowView: UIView {
    
    let title: String
    let isOn: Bool
    
    init(title: String, isOn :Bool) {
        self.title = title
        self.isOn = isOn
        
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        CGSize(width: 200, height: 31)
    }
    
    func setupViews() {
        let label = makeLabel(withText: title)
        let theSwitch = makeSwitch(isOn: isOn)
        
        addSubview(label)
        addSubview(theSwitch)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            theSwitch.trailingAnchor.constraint(equalTo: trailingAnchor),
            theSwitch.centerYAnchor.constraint(equalTo: label.centerYAnchor)
        ])
        
        translatesAutoresizingMaskIntoConstraints = false
    }
}
