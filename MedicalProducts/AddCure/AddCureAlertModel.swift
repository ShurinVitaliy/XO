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
    func pickImage(imagePickerController: UIImagePickerController) -> Void
}

class AddCuerAlertModelImp: AddCuerAlertModel {
    
    let simptom: Symptom
    let cancel: () -> Void
    let router: AddCureAlertViewRouter
    
    init(router: AddCureAlertViewRouter, simptom: Symptom, cancel: @escaping () -> Void) {
        self.simptom = simptom
        self.cancel = cancel
        self.router = router
    }
    
    func pickImage(imagePickerController: UIImagePickerController) {
        router.pickImage(imagePickerController: imagePickerController)
    }
}
