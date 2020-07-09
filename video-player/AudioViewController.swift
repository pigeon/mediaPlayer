//
//  AudioViewController.swift
//  video-player
//
//  Created by magician on 09/07/2020.
//  Copyright © 2020 dmytro. All rights reserved.
//

import UIKit
import AVFoundation

class AudioViewController: UIViewController {

    var audioTest: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func playAACSound(_ sender: Any) {
        let path = Bundle.main.path(forResource: "aac.aac", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            audioTest = try AVAudioPlayer(contentsOf: url)
            audioTest?.play()
        } catch {
            // couldn't load file :(
        }
    }

    @IBAction func playAMRSound(_ sender: Any) {
        let path = Bundle.main.path(forResource: "amr.amr", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            audioTest = try AVAudioPlayer(contentsOf: url)
            audioTest?.play()
        } catch {
            // couldn't load file :(
        }
    }
}
