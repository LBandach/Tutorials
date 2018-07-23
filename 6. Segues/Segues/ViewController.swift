//
//  ViewController.swift
//  Segues
//
//  Created by user on 05.07.2018.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
    
    performSegue(withIdentifier: "goSecondScreen", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSecondScreen" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.textPassedOver = label1.text!
            
        }
    }
    
    
}

