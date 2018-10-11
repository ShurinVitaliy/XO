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
}

class MedicalProductViewModelImp: MedicalProductViewModel {
    
    private let router: MedicalProductViewRouter
    let placeholderText: String = "Search"
    let simptom: Symptom
    
    init(router: MedicalProductViewRouter, simptom: Symptom) {
        self.router = router
        self.simptom = simptom
    }
}
