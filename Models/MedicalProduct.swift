//
//  MedicalProduct.swift
//  XO
//
//  Created by Admin on 17.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MedicalProduct {
    
    private(set) var photo: UIImage
    private(set) var name: String
    private(set) var country: String
    private(set) var price: String?
    private(set) var about: String?
    
    init(photo: UIImage, name: String, country: String, price: String?, about: String?) {
        self.photo = photo
        self.name = name
        self.country = country
        self.price = price
        self.about = about
    }
}

