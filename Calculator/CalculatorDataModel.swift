//
//  CalculatorDataModel.swift
//  Calculator
//
//  Created by Macintosh on 3/26/16.
//  Copyright © 2016 Macintosh. All rights reserved.
//

import Foundation

class CalculatorDataModel {

private var firstNumber = 0.0
private var secondNumber = 0.0
private var result = 0.0
private var operation = ""

    func reset() -> String{
        firstNumber = 0.0
        secondNumber = 0.0
        result = 0.0
        operation = ""
        return String(result)
    }
    
    func setOperationAndNumber(let operation: String, let firstNum: String){
        self.operation = operation
        firstNumber = Double(firstNum)!
    }
    
    func getResult () -> String {
        return String(result)
    }
    
    func calculate(let secondNum: String) ->String{
        secondNumber = Double(secondNum)!
        
        switch operation {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "/":
            result = firstNumber / secondNumber
        case "+":
            result = firstNumber + secondNumber
        default:
            print("no operation selected")
            result = secondNumber
        }
//      print(result)
        return String(result)
    
    }


    

}