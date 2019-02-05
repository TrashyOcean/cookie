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
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(leftSwipe)
    }

    @IBAction func touchCookie(_ sender: UIButton) {
        clickCount += 1
    }
    
}

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

/*
 import UIKit
 
 class ViewController: UIViewController {
 /*
 override func viewDidLoad() {
 super.viewDidLoad()
 // Do any additional setup after loading the view, typically from a nib.
 }
 */
 
 var flipCount = 0 {
 didSet {
 flipCountLabel.text = "Flips: \(flipCount)"
 }
 }
 
 @IBOutlet weak var flipCountLabel: UILabel!
 
 @IBOutlet var cardButtons: [UIButton]!
 
 var emojiChoices = ["🎃", "👻", "🎃", "👻"]
 
 @IBAction func touchCard(_ sender: UIButton) {
 flipCount += 1
 if let cardNumber = cardButtons.index(of: sender) {
 flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
 } else {
 print("chosen card was not in cardButtons")
 }
 }
 
 func flipCard(withEmoji emoji: String, on button: UIButton) {
 // print("flipCard(withEmoji: \(emoji))")
 
 if button.currentTitle == emoji {
 button.setTitle("", for: UIControl.State.normal)
 button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
 } else {
 button.setTitle(emoji, for: UIControl.State.normal)
 button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
 }
 }
 
 
 }
 */
