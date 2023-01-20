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
    
    private var displayValue: Double {
        get{
            guard let number = Double(numLabel.text!) else {
                fatalError("Cannot convert to Double!")
            }
            return number
        }
        set{
            numLabel.text = String(newValue)
        }
    }
    
    private var calculator = CLogic()
    
    @IBAction func calculationButtonTapped(_ sender: UIButton) {
        
        endTyping = true
        calculator.setNumber(displayValue)
        
        if let calculation = sender.titleLabel?.text {
            
            if let result = calculator.calculate(symbol: calculation) {
                displayValue = result
            }
        }
    }
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        
        if let num = sender.titleLabel?.text {
            if endTyping == true {
                numLabel.text = num
                endTyping = false
            }else {
                if num == "."{
                    let isItInt = floor(displayValue) == displayValue
                    if !isItInt {
                        return
                    }
                }
                numLabel.text = numLabel.text! + num
            }
        }
    }
}

