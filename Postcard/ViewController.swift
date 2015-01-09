//
//  ViewController.swift
//  Postcard
//
//  Created by Патутинский Федор on 22.12.14.
//  Copyright (c) 2014 BitFountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextfField: UITextField!
    @IBOutlet weak var enterMessagetextField: UITextField!

    @IBOutlet weak var mailButton: UIButton!
    
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
        messageLabel.text  = enterMessagetextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessagetextField.text = ""
        enterMessagetextField.resignFirstResponder()
        
        mailButton.setTitle("MailSent", forState: UIControlState.Normal)
    }
}
