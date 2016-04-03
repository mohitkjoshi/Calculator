//
//  ViewController.swift
//  Calculator
//
//  Created by Macintosh on 3/17/16.
//  Copyright © 2016 Macintosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var calculator = CalculatorDataModel()
    var calculationComplete = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBOutlet weak var displayLable: UILabel!
    
    @IBAction func buttonPressed(sender: UIButton) {

        if(calculationComplete) {
            calculator.reset();
            displayLable.text = calculator.getResult()
            calculationComplete = false
        }
        if(displayLable.text! == "0.0") {
            displayLable.text = sender.titleLabel!.text!
        } else {
            displayLable.text = displayLable.text! + sender.titleLabel!.text!
        }
     }

    /* New operation could be / * - + = which will prompt us to
    save first Number and operator
    */
    @IBAction func operatorSelected(sender: UIButton) {
        calculator.setOperationAndNumber(sender.titleLabel!.text!, firstNum: displayLable.text!)
        displayLable.text = calculator.getResult()
        
    }
    
    /*User selects =, we need to calculate
    */
    @IBAction func calculate(sender: AnyObject) {
        displayLable.text = calculator.calculate(displayLable.text!)
        calculationComplete = true
    }
    
    
    @IBAction func clear(sender: AnyObject) {
                displayLable.text = calculator.reset()
    }
    
    @IBAction func flipSign(sender: UIButton) {

        if(displayLable.text!.hasPrefix("-")){
            displayLable.text!.removeAtIndex(displayLable.text!.startIndex)
        } else {
            displayLable.text = "-" + displayLable.text!
        }
    }
    
}

