//
//  2ndViewController.swift
//  Delegates and protocols
//
//  Created by user on 05.07.2018.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

protocol sendDataBackTo1stVC {
    func reciveData(_: String)
}

class _ndViewController: UIViewController {

    var textPassedOver: String?
    
    var delegate : sendDataBackTo1stVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFrom1stViewController.text = textPassedOver

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var textFrom1stViewController: UILabel!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBAction func sendTextTo1stViewController(_ sender: UIButton) {
        delegate?.reciveData(textField2.text!)
        dismiss(animated: true, completion: nil)
        print(delegate ?? "kasia")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
