//
//  MedicalProductTableViewCell.swift
//  XO
//
//  Created by Admin on 10.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit
import Foundation

class MedicalProductTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var aboutTextView: UITextView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    func updateWithModel(medicalProduct: MedicalProduct) {
        
        nameLabel.text = medicalProduct.name
        countryLabel.text = medicalProduct.country
        aboutTextView.text = medicalProduct.about
        priceLabel.text = medicalProduct.about
        photoImageView.image = medicalProduct.photo
    }
}
