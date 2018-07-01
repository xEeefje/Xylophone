//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        //functie krijgt input voor het vinden van de juiste audio
        playSound(soundFileName : soundArray[sender.tag - 1])
    }
    
    //functie heeft input
    func playSound(soundFileName : String) {
        //variabele voor de url om de juiste audio te vinden
        let soundUrl = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        //audio probeert af te spelen of er wordt een error opgevangen
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch {
            print(error)
        }
        
        //audio wordt daadwerkelijk afgespeeld
        audioPlayer.play()
    }
    
  

}

