//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Nilsu Aksoy on 29.04.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    var flagNames = [String]()
    var flagImages = [UIImage]()
    
    var chosenFlagName = ""
    var chosenFlagImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        flagNames.append("Turkey")
        flagNames.append("China")
        flagNames.append("Japan")
        flagNames.append("Korea")
        flagNames.append("USA")
        flagNames.append("England")
        
        flagImages.append(UIImage(named: "turkey.png")!)
        flagImages.append(UIImage(named: "china.png")!)
        flagImages.append(UIImage(named: "japan.png")!)
        flagImages.append(UIImage(named: "korea.png")!)
        flagImages.append(UIImage(named: "usa.png")!)
        flagImages.append(UIImage(named: "uk.png")!)

    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flagNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = flagNames[indexPath.row]
        //content.image = flagImages[indexPath.row]
        content.secondaryText = "Test"
        cell.contentConfiguration = content
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFlagName = flagNames[indexPath.row]
        chosenFlagImage = flagImages[indexPath.row]

        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedFlagName = chosenFlagName
            destinationVC.selectedFlagImage = chosenFlagImage

        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.flagNames.remove(at: indexPath.row)
            self.flagImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)

        }
    }

}

