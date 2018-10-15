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
    var cancel: () -> Void { get }
    var save: (Symptom) -> Void { get }
    func alertWarning() -> Void
    func pickImage(imagePickerController: UIImagePickerController) -> Void
    func createNewMedicalProduct(photo: UIImage, name: String, country: String, price: String?, about: String?) -> Void
}

class AddCuerAlertModelImp: AddCuerAlertModel {
    
    let simptom: Symptom
    let cancel: () -> Void
    let save: (Symptom) -> Void
    let router: AddCureAlertViewRouter
    
    init(router: AddCureAlertViewRouter, simptom: Symptom, cancel: @escaping () -> Void, save: @escaping(Symptom) -> Void) {
        self.simptom = simptom
        self.cancel = cancel
        self.router = router
        self.save = save
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
}
