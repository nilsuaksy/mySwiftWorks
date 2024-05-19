//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by Nilsu Aksoy on 29.04.2024.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var flagLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedFlagName = ""
    var selectedFlagImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flagLabel.text = selectedFlagName
        imageView.image = selectedFlagImage

    }


}
