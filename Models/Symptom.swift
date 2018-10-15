//
//  Symptom.swift
//  XO
//
//  Created by Admin on 16.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class Symptom {
    
    private(set) var name: String
    private var medicalProducts: [MedicalProduct]
    var countOfMedicalProduct: Int {return medicalProducts.count}
    
    var last: MedicalProduct {
        return medicalProducts.last!
    }
    
    init(name: String, medicalProducts: [MedicalProduct]) {
        self.name = name
        self.medicalProducts = medicalProducts
    }
    
    init(name: String) {
        self.name = name
        self.medicalProducts = [MedicalProduct]()
    }
    
    func addNewMedicalProduct(medicalProduct: MedicalProduct) {
        medicalProducts.append(medicalProduct)
    }
    
    func medicalProductForIndex(_ index: Int) -> MedicalProduct {
        return medicalProducts[index]
    }
    
}
