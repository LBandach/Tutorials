//
//  ViewController.swift
//  Delegates and protocols
//
//  Created by user on 05.07.2018.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController, sendDataBackTo1stVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var TextFrom2ndViewController: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBAction func sendTextTo2ndViewController(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondView", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondView" {
            let destinationVC = segue.destination as! _ndViewController
            destinationVC.textPassedOver = textField1.text
            destinationVC.delegate = self //<<<--- wtf is that: this is where data is goin from 2nd VC (without it we can recive data delegate is not catched)
        }
    }

    func reciveData(_ dataFrom2ndVC : String) {
        TextFrom2ndViewController.text = dataFrom2ndVC
    }

}

