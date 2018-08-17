//
//  MedicalProduct.swift
//  XO
//
//  Created by Admin on 17.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

struct Discription {
    
    var country: String
    var about: String?
    var price: Int
    
    init(country: String, about: String?, price: Int) {
        self.country = country
        self.about = about
        self.price = price
    }
}

class MedicalProduct {
    
    private(set) var name: String
    private(set) var photo: UIImage?
    private(set) var discription: Discription
    
    init(name: String, photo: UIImage?, discription: Discription) {
        self.name = name
        self.photo = photo
        self.discription = discription
    }
}

