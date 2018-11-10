//
//  MedicalProductTableViewModel.swift
//  XO
//
//  Created by Admin on 08.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

protocol MedicalProductTableViewModel {
    var simptom: Symptom { get }
}

class MedicalProductTableViewModelImp: MedicalProductTableViewModel{
    
    private let router: MedicalProductTableViewRouter
    let simptom: Symptom
    
    init(router: MedicalProductTableViewRouter, symptom: Symptom) {
        self.router = router
        self.simptom = symptom
    }
    
}
