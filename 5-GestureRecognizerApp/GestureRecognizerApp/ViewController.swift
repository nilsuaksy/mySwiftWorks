//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Nilsu Aksoy on 14.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isJames = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)


    }
    
    @objc func changePic() {
        
        
        if isJames == true {

            imageView.image = UIImage(named: "skillet2")
            myLabel.text = "Skillet -2-"
            isJames = false
        } else {
            imageView.image = UIImage(named: "skillet1")
            myLabel.text = "Skillet -1-"
            isJames = true
        }

    }
    

}

