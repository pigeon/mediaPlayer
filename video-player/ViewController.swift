//
//  ViewController.swift
//  video-player
//
//  Created by magician on 09/07/2020.
//  Copyright © 2020 dmytro. All rights reserved.
//

import UIKit
 import AVKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var videoView: UIView!
    var player: AVPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let path = Bundle.main.path(forResource: "video", ofType: "mp4")
        let videoURL = URL(fileURLWithPath: path!)
        player = AVPlayer(url: videoURL)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.videoView.bounds
        self.videoView.layer.addSublayer(playerLayer)
    }

    @IBAction func playvideo(_ sender: Any) {
        player?.play()
    }
}

