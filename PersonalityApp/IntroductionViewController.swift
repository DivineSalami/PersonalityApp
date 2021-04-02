//
//  ViewController.swift
//  PersonalityApp
//
//  Created by P.M. Student on 3/24/21.
//

import UIKit
import AVFoundation

class IntroductionViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBAction func unwindToQuizIntro (segue: UIStoryboardSegue) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let sound = Bundle.main.path(forResource: "letsGo", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
        } catch {
            print(error)
        }
       
    }
    @IBAction func LetsGooo(_ sender: Any) {
        audioPlayer.play()
    }
    

}

