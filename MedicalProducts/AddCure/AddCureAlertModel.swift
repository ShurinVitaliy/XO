//
//  AddCureAlertModel.swift
//  XO
//
//  Created by Admin on 04.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import UIKit

protocol AddCuerAlertModel {
    var simptom: Symptom { get }
    var medicalProduct: MedicalProduct { get }
    var cancel: () -> Void { get }
    var save: (Symptom) -> Void { get }
    var edit: (MedicalProduct) -> Void { get }
    func alertWarning() -> Void
    func pickImage(imagePickerController: UIImagePickerController) -> Void
    func createNewMedicalProduct(photo: UIImage, name: String, country: String, price: String?, about: String?) -> Void
    func editMedicalProduct(photo: UIImage, name: String, country: String, price: String?, about: String?) -> Void
    var buttonType: ButtonType { get }
}

class AddCuerAlertModelImp: AddCuerAlertModel {
    
    
    
    let simptom: Symptom
    let router: AddCureAlertViewRouter
    let cancel: () -> Void
    let save: (Symptom) -> Void
    let edit: (MedicalProduct) -> Void
    var medicalProduct: MedicalProduct
    var buttonType: ButtonType {
        switch medicalProduct.mode {
        case .edit:
            return ButtonType.edit
        case .add:
            return ButtonType.save
        }
    }
    init(router: AddCureAlertViewRouter, simptom: Symptom, medicalProduct: MedicalProduct, cancel: @escaping () -> Void, save: @escaping(Symptom) -> Void, edit: @escaping(MedicalProduct) -> Void) {
        self.simptom = simptom
        self.cancel = cancel
        self.router = router
        self.save = save
        self.medicalProduct = medicalProduct
        self.edit = edit
    }
    
    func createNewMedicalProduct(photo: UIImage, name: String, country: String, price: String?, about: String?) {
        let medicalProduct = MedicalProduct(photo: photo, name: name, country: country, price: price, about: about)
        simptom.addNewMedicalProduct(medicalProduct: medicalProduct)
        save(simptom)
    }
    
    func alertWarning() {
        router.alertWarning()
    }
    
    func pickImage(imagePickerController: UIImagePickerController) {
        router.pickImage(imagePickerController: imagePickerController)
    }
    
    func editMedicalProduct(photo: UIImage, name: String, country: String, price: String?, about: String?) {
        
        
    }
}
