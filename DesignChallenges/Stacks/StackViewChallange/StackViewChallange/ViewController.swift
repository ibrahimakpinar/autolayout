//
//  ViewController.swift
//  StackViewChallange
//
//  Created by ibrahim AKPINAR on 19.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private enum Layout {
        static let margin: CGFloat = 16
        static let spacing: CGFloat = 20
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        setupViews()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }
    
    func setupViews() {
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.spacing = Layout.spacing
        
        let offlineRow = RowView(title: "Offline", isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        let crossfade = CrossfadeView()
        let gaplessRow = RowView(title: "Gapless Playback", isOn: true)
        let hideSongsRow = RowView(title: "Hide Unplayable Songs", isOn: true)
        let enableNormalizationRow = RowView(title: "Enable Audio Normalization", isOn: true)
        
        stackView.addArrangedSubview(offlineRow)
        stackView.addArrangedSubview(offlineSublabel)
        stackView.addArrangedSubview(crossfade)
        stackView.addArrangedSubview(gaplessRow)
        stackView.addArrangedSubview(hideSongsRow)
        stackView.addArrangedSubview(enableNormalizationRow)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(
            top: Layout.margin,
            leading: Layout.margin,
            bottom: Layout.margin,
            trailing: Layout.margin
        )
    }
}





