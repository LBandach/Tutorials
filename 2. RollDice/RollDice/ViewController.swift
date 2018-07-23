//
//  ViewController.swift
//  RollDice
//
//  Created by user on 25.06.2018.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollingADice()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollAction(_ sender: UIButton) {
    
        rollingADice()
        
    }
    
    func rollingADice() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        dice1ImageView.image = UIImage(named: diceArray[randomDiceIndex1])
        dice2ImageView.image = UIImage(named: "dice\(randomDiceIndex2 + 1)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        rollingADice()
    
    }
    
}










