//
//  CrossfadeView.swift
//  StackViewChallange
//
//  Created by ibrahim AKPINAR on 19.03.2023.
//

import UIKit

final class CrossfadeView: UIView {
   
    private enum Layout {
        static let margin: CGFloat = 4
        static let negativeMargin: CGFloat = -4
        static let spacing: CGFloat = 32
    }
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()
        
        addSubview(crossfadeLabel)
        addSubview(crossfadeMinLabel)
        addSubview(crossfadeMaxLabel)
        addSubview(crossfadeProgressView)
        
        NSLayoutConstraint.activate([
            crossfadeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: Layout.spacing),
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: Layout.margin),
            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: Layout.negativeMargin),
            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            crossfadeMaxLabel.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor)
        ])
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 300, height: 100)
    }
}
