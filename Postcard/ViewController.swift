//
//  ViewController.swift
//  Postcard
//
//  Created by Alexander Hewitt on 11/07/2015.
//  Copyright (c) 2015 Alexander Hewitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        
        nameLabel.hidden = false
        
        messageLabel.text = enterMessageTextField.text
        
        nameLabel.text = enterNameTextField.text
        
        enterNameTextField.text = ""
        
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        
        messageLabel.textColor = UIColor.redColor()
        sendMailButtonOutlet.setTitle("Sent", forState: .Normal)
        
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

}

