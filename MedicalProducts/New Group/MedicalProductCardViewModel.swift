//
//  MedicalProductCardViewModel.swift
//  XO
//
//  Created by Admin on 15.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

protocol MedicalProductCardViewModel {
    var medicalProduct: MedicalProduct { get }
    
}

class MedicalProductCardViewModelImp: MedicalProductCardViewModel {
    
    let medicalProduct: MedicalProduct
    
    init(medicalProduct: MedicalProduct) {
        self.medicalProduct = medicalProduct
    }
}
