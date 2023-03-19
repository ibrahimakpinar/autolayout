//
//  RowView.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 14.03.2023.
//

import UIKit

final class RowView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }
    
    func setupViews() {
        let titleLabel = makeLabel(withText: "Gapless Playback")
        let onOffSwicth = makeSwitch(isOn: true)
        
        addSubview(titleLabel)
        addSubview(onOffSwicth)
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        onOffSwicth.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        onOffSwicth.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}
