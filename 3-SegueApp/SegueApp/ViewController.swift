//
//  ViewController.swift
//  SegueApp
//
//  Created by Nilsu Aksoy on 12.04.2024.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    
    @IBOutlet weak var nameText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //viewDidDisappear
    //viewWillDissappear
    
    //viewWillAppear
    //viewDidAppear

    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = "Hoşgeldiniz \(userName)"
        }
    }
    
}

