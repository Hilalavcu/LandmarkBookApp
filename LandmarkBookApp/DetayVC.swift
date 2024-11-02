//
//  DetayVC.swift
//  LandmarkBookApp
//
//  Created by Hilal AVCU on 19.10.2024.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmerkNames = ""
    var selectedLandmarkImages = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedLandmerkNames
        imageView.image = selectedLandmarkImages
        

        
    }
    


}
