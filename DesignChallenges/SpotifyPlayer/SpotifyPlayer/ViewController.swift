//
//  ViewController.swift
//  SpotifyPlayer
//
//  Created by ibrahim AKPINAR on 12.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private enum LayoutConstants {
        static let buttonHeight: CGFloat = 40
        static let spacer: CGFloat = 32
        static let defaultSpace: CGFloat = 8
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        let albumImage = makeImageView(named: "rush")
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        
        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText: "0:30")
        let progressView = makeProgressView()

        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        view.addSubview(albumImage)
        view.addSubview(trackLabel)
        view.addSubview(albumLabel)
        
        view.addSubview(playButton)
        view.addSubview(previewStartLabel)
        view.addSubview(progressView)
        view.addSubview(previewEndLabel)
        
        view.addSubview(spotifyButton)
        
        
        NSLayoutConstraint.activate([
            albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1),
            albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width)
        ])
        
        NSLayoutConstraint.activate([
            trackLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: LayoutConstants.defaultSpace),
            trackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: LayoutConstants.defaultSpace),
            trackLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -LayoutConstants.defaultSpace)
        ])
        
        NSLayoutConstraint.activate([
            albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: LayoutConstants.defaultSpace),
            albumLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: LayoutConstants.defaultSpace),
            albumLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -LayoutConstants.defaultSpace)
        ])
        
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: LayoutConstants.defaultSpace),
            playButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: LayoutConstants.defaultSpace),
            playButton.heightAnchor.constraint(equalToConstant: LayoutConstants.buttonHeight),
            playButton.widthAnchor.constraint(equalToConstant: LayoutConstants.buttonHeight)
        ])
        
        NSLayoutConstraint.activate([
            previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: LayoutConstants.defaultSpace)
        ])
        
        NSLayoutConstraint.activate([
            progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 4),
            progressView.trailingAnchor.constraint(equalTo: previewEndLabel.leadingAnchor, constant: -4)
        ])
        
        NSLayoutConstraint.activate([
            previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewEndLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -LayoutConstants.defaultSpace)
        ])
        
        NSLayoutConstraint.activate([
            spotifyButton.topAnchor.constraint(equalTo: playButton.bottomAnchor, constant: LayoutConstants.spacer),
            spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

