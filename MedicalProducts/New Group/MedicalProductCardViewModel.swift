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
    var edit: () -> Void { get }
}

class MedicalProductCardViewModelImp: MedicalProductCardViewModel {
    
    var edit: () -> Void
    let medicalProduct: MedicalProduct
    
    init(medicalProduct: MedicalProduct, edit: @escaping () -> Void) {
        self.medicalProduct = medicalProduct
        self.edit = edit
    }
}
