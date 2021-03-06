//
//  ViewController.swift
//  Postcard
//
//  Created by Mark Lewis on 24/12/2014.
//  Copyright (c) 2014 Mark Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailMessageButton(sender: UIButton) {
        // Show message label
        messageLabel.hidden = false
        nameLabel.hidden = false
        // Adding a comment to test commits
        
        // Show message text on screen when is submitted
        if enterMessageTextField !== " " {
            messageLabel.text = enterMessageTextField.text
        } else {
            messageLabel.text = "Please enter a message text"
        }
        
        // Show name on screen if it's entered
        if enterNameTextField !== " " {
            nameLabel.text = enterNameTextField.text
        } else {
            nameLabel.text = "Please enter a name"
        }
        
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        
        // Reset the message text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.text = ""
        
        
        // Update Button Text - Buttons have a state
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    

}

