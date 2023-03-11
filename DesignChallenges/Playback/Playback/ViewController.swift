//
//  ViewController.swift
//  Playback
//
//  Created by ibrahim AKPINAR on 11.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private enum Layout {
        static let margin: CGFloat = 20
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
        let offlineLabel = makeLabel(withText: "Offline")
        let offlineSwitch = makeSwitch(isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        
        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()
        
        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
        let gaplessPlaybackSwitch = makeSwitch(isOn: true)
        
        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        let hideSongsSwitch = makeSwitch(isOn: true)
        
        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
        let enableNormalizationSwitch = makeSwitch(isOn: true)
        
        view.addSubview(offlineLabel)
        view.addSubview(offlineSwitch)
        view.addSubview(offlineSublabel)
        
        view.addSubview(crossfadeLabel)
        view.addSubview(crossfadeMinLabel)
        view.addSubview(crossfadeProgressView)
        view.addSubview(crossfadeMaxLabel)

        view.addSubview(gaplessPlaybackLabel)
        view.addSubview(gaplessPlaybackSwitch)

        view.addSubview(hideSongsLabel)
        view.addSubview(hideSongsSwitch)

        view.addSubview(enableNormalizationLabel)
        view.addSubview(enableNormalizationSwitch)
        
        // Offline
        
        NSLayoutConstraint.activate([
            offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            offlineLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: Layout.margin),
            offlineSwitch.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor),
            offlineSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.margin),
            offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.margin),
            offlineSublabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: Layout.margin)
        ])

        // Crossfade
        NSLayoutConstraint.activate([
            crossfadeLabel.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: Layout.spacing),
            crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: Layout.spacing),
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4),
            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4),
            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.margin),
            crossfadeMaxLabel.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor)
        ])

        // Gapless playback
        NSLayoutConstraint.activate([
            gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeMinLabel.bottomAnchor, constant: Layout.spacing),
            gaplessPlaybackSwitch.centerYAnchor.constraint(equalTo: gaplessPlaybackLabel.centerYAnchor),
            gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.margin)
        ])
        
        // Hide songs
        NSLayoutConstraint.activate([
            hideSongsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: Layout.spacing),
            hideSongsSwitch.centerYAnchor.constraint(equalTo: hideSongsLabel.centerYAnchor),
            hideSongsSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.margin)
        ])
        
        
        // Audi normalizations
        NSLayoutConstraint.activate([
            enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.margin),
            enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: Layout.spacing),
            enableNormalizationSwitch.centerYAnchor.constraint(equalTo: enableNormalizationLabel.centerYAnchor),
            enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.margin)
        ])
    }
}

