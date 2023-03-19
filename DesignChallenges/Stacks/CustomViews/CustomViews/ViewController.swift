//
//  ViewController.swift
//  CustomViews
//
//  Created by ibrahim AKPINAR on 19.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private enum Layout {
        static let margin: CGFloat = 20
        static let negativeMargin: CGFloat = -20
        static let spacing: CGFloat = 32
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
        let offlineRow = RowView(title: "Offline", isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        let crossfade = CrossfadeView()
        let gaplessRow = RowView(title: "Gapless Playback", isOn: true)
        let hideSongsRow = RowView(title: "Hide Unplayable Songs", isOn: true)
        let enableNormalizationRow = RowView(title: "Enable Audio Normalization", isOn: true)
        
        view.addSubview(offlineRow)
        view.addSubview(offlineSublabel)
        view.addSubview(crossfade)
        view.addSubview(gaplessRow)
        view.addSubview(hideSongsRow)
        view.addSubview(enableNormalizationRow)

        // Offline
        NSLayoutConstraint.activate([
            offlineRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            offlineRow.topAnchor.constraint(equalTo: view.topAnchor, constant: Layout.margin),
            offlineRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Layout.negativeMargin),
            offlineSublabel.topAnchor.constraint(equalTo: offlineRow.bottomAnchor, constant: Layout.margin),
            offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.margin)
        ])

        // Crossfade
        NSLayoutConstraint.activate([
            crossfade.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: Layout.spacing),
            crossfade.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Layout.negativeMargin),
            crossfade.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin)
        ])
        
        // Gapless playback
        NSLayoutConstraint.activate([
            gaplessRow.topAnchor.constraint(equalTo: crossfade.bottomAnchor, constant: Layout.spacing),
            gaplessRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            gaplessRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.margin)
        ])
        
        // Hide songs
        NSLayoutConstraint.activate([
            hideSongsRow.topAnchor.constraint(equalTo: gaplessRow.bottomAnchor, constant: Layout.spacing),
            hideSongsRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            hideSongsRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.margin)
        ])
        
        // Audi normalizations
        NSLayoutConstraint.activate([
            enableNormalizationRow.topAnchor.constraint(equalTo: hideSongsRow.bottomAnchor, constant: Layout.spacing),
            enableNormalizationRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            enableNormalizationRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.margin)
        ])
    }
}



