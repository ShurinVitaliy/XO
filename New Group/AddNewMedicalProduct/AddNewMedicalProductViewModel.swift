//
//  AddNewMedicalProductViewModel.swift
//  XO
//
//  Created by Admin on 12.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

protocol AddNewMedicalProductViewModel {
    func save(_ medicalProduct: MedicalProduct) -> Void
}

class AddNewMedicalProductViewModelImp: AddNewMedicalProductViewModel {
    
    
    var symptom: Symptom
    var router: AddNewMedicalProductViewRouter
    
    init(symptom: Symptom, router: AddNewMedicalProductViewRouter) {
        self.symptom = symptom
        self.router = router
    }
    
    func save(_ medicalProduct: MedicalProduct) {
        
        if !(medicalProduct.name.isEmpty && medicalProduct.country.isEmpty && (medicalProduct.price?.isEmpty)!) {
            symptom.addNewMedicalProduct(medicalProduct: medicalProduct)
        } else {
            router.wariningAlert(title: "warning!", message: "Fill in all the fields!")
        }

    }
    
    
}
