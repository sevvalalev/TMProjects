//
//  ViewController.swift
//  Calculator
//
//  Created by Sevval Alev on 18.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    
    private var endTyping: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func calculationButtonTapped(_ sender: UIButton) {
        
        endTyping = true
        
    }
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {
       
        if let num = sender.titleLabel?.text {
            if endTyping == true {
                numLabel.text = num
                endTyping = false
            }else {
                numLabel.text = numLabel.text! + num
            }
        }
    }
    

}

