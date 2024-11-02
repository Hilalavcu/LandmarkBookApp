//
//  ViewController.swift
//  LandmarkBookApp
//
//  Created by Hilal AVCU on 19.10.2024.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImage = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandemarkImages = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        landmarkNames.append("Venedik")
        landmarkNames.append("Sazova Bilim")
        landmarkNames.append("Portofino")
        landmarkNames.append("Nigara Falls")
        landmarkNames.append("Ha Long Koyu")
        landmarkNames.append("Great Walls")
        landmarkNames.append("Fırtına Deresi")
        
        
        
        
        landmarkImage.append(UIImage(named: "Venedik")!)
        landmarkImage.append(UIImage(named: "SazovaBilim")!)
        landmarkImage.append(UIImage(named: "Portofino")!)
        landmarkImage.append(UIImage(named: "NigaraFalls")!)
        landmarkImage.append(UIImage(named: "HaLongKoyu")!)
        landmarkImage.append(UIImage(named: "GreatWall")!)
        landmarkImage.append(UIImage(named: "FirtinaDeresi")!)
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandemarkImages = landmarkImage[indexPath.row]
        
        performSegue(withIdentifier: "toDetayVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetayVC" {
            let destinationVC = segue.destination as! DetayVC
            destinationVC.selectedLandmerkNames = chosenLandmarkName
            destinationVC.selectedLandmarkImages = chosenLandemarkImages
            
        
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    


}

