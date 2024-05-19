//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Nilsu Aksoy on 12.04.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    }
    


}
