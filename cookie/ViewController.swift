//
//  ViewController.swift
//  cookie
//
//  Created by Anthony Sainez on 1/9/19.
//  Copyright © 2019 Anthony Sainez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO: Make bigger on click
    
    var clickCount = 0 {
        didSet {
            clickCountLabel.text = "\(clickCount)"
        }
    }
    
    @IBOutlet weak var clickCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func touchCookie(_ sender: UIButton) {
        clickCount += 1
    }
    
}



