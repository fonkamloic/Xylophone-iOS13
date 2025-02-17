//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(sound: String) {
            let url = Bundle.main.url(forResource: sound, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player?.play()
                    
        }
    

    @IBAction func KeyPressed(_ sender: UIButton) {
        print(sender.currentTitle?.description ?? "C");
        playSound(sound: sender.currentTitle?.description ?? "C");

    }
}



