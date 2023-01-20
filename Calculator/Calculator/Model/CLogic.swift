//
//  CLogic.swift
//  Calculator
//
//  Created by Sevval Alev on 21.01.2023.
//

import Foundation

struct CLogic {
    
    private var num: Double?
    private var midCalculation: (n1:Double, calcMethod: String)?
    
    mutating func setNumber(_ num:Double) {
        self.num = num
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let num = num {
            switch symbol {
            case "AC" :
                return 0
            case "=" :
                return twoNumberCalc(n2:num)
            default:
                midCalculation = (n1: num, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func twoNumberCalc(n2: Double) -> Double? {
        
        if let n1 = midCalculation?.n1,
           let operation = midCalculation?.calcMethod {
            
            switch operation {
            case "+":
                return n1 + n2
            default:
                fatalError("Operation not match any of the cases.")
            }
        }
        return nil
    }
}
