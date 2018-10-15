//
//  MedicalProductViewModel.swift
//  XO
//
//  Created by Admin on 07.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

protocol MedicalProductViewModel {
    var placeholderText: String { get }
    var simptom: Symptom { get }
    func createAlertView(addButton: UIBarButtonItem, yCoordinate: CGFloat, addMedProd: @escaping (Symptom) -> Void) -> AddCureAlertView
}

class MedicalProductViewModelImp: MedicalProductViewModel {
    
    private let router: MedicalProductViewRouter
    let placeholderText: String = "Search"
    let simptom: Symptom
    
    init(router: MedicalProductViewRouter, simptom: Symptom) {
        self.router = router
        self.simptom = simptom
    }
    
    func createAlertView(addButton: UIBarButtonItem, yCoordinate: CGFloat, addMedProd: @escaping (Symptom) -> Void) -> AddCureAlertView {
        return router.createAlertView(addButton: addButton, simptom: simptom, yCoordinate: yCoordinate, addMedProd: addMedProd)
    }
}
