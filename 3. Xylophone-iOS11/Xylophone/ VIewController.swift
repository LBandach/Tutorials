//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var soundPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



//    @IBAction func notePressed(_ sender: UIButton) {
//
//
//            let path = Bundle.main.path(forResource: "note\(sender.tag).wav", ofType: nil)!
//            let url = URL(fileURLWithPath: path)
//            do {
//                soundPlayer = try AVAudioPlayer(contentsOf: url)
//                soundPlayer?.play()
//            } catch {
//                print(error)
//            }
//
//    }

    //other way
    @IBAction func notePressed(_ sender: UIButton) {
        
       playSound(numberOfNote: sender.tag)
        
    }
    
    func playSound(numberOfNote: Int){
        
        let path = Bundle.main.path(forResource: "note\(numberOfNote).wav", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.play()
        } catch {
            print(error)
        }
    }
    
    
    
    
}









