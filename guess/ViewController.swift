//
//  ViewController.swift
//  guess
//
//  Created by Wilson on 2017-02-03.
//  Copyright © 2017 com.Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var guessText: UILabel!
    
    @IBOutlet weak var guessField: UITextField!
    
    @IBAction func guessButton(_ sender: Any) {
        let guessRand = arc4random_uniform(6)
        
        if Int(guessField.text!)! == Int(guessRand) {
            guessText.text = "How'd you know it was \(Int(guessRand))?"
        } else {
            guessText.text = "Sorry it was actually \(Int(guessRand))"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

