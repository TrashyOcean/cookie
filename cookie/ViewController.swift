//
//  ViewController.swift
//  cookie
//
//  Created by Anthony Sainez on 1/9/19.
//  Copyright © 2019 Anthony Sainez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var clickCount = 0 {
        didSet {
            clickCountLabel.text = "\(clickCount)"
        }
    }

    
    @IBOutlet weak var clickCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(leftSwipe)
        */
    }

    @IBAction func touchCookie(_ sender: UIButton) {
        clickCount += 1
    }
    
}

/*
extension UIViewController {
    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
        switch swipe.direction.rawValue {
        case 1:
            performSegue(withIdentifier: "goLeft", sender: self)
        case 2:
            performSegue(withIdentifier: "goRight", sender: self)
        default:
            break
        }
    }
}
*/

