//
//  ViewController.swift
//  BracketValidator
//
//  Created by Bruce Burgess on 7/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var bracketCheckLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func testTextTapped(_ sender: UIButton) {
        
        if let text = textView.text, !text.isEmpty {
            if validateBracketsFrom(text) {
                bracketCheckLabel.text = "True"
            } else {
                bracketCheckLabel.text = "False"
            }
        }
        
    }
    
}

