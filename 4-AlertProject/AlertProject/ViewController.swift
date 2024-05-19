//
//  ViewController.swift
//  AlertProject
//
//  Created by Nilsu Aksoy on 12.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordCheckText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
     
        /*
        let alert = UIAlertController(title: "Error!", message: "Username Not Found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("Button Clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        */
        
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found!")

        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found!")

        } else if passwordText.text != passwordCheckText.text {
            makeAlert(titleInput: "Error", messageInput: "Passwords do not match!")

        } else {
            makeAlert(titleInput: "Success", messageInput: "User signed up!")
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

