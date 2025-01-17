//
//  ViewController.swift
//  MySimpleCalculator
//
//  Created by Nilsu Aksoy on 10.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!){
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
            
        }
    }
    
    
    @IBAction func minusClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!){
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
            
        }
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!){
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
            
        }
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!){
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
            
        }
    }
}

