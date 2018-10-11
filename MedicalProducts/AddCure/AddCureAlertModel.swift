//
//  AddCureAlertModel.swift
//  XO
//
//  Created by Admin on 04.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

protocol AddCuerAlertModel {
    var simptom: Symptom { get }
    var cancel: () -> Void { get }
}

class AddCuerAlertModelImp: AddCuerAlertModel {
    
    let simptom: Symptom
    let cancel: () -> Void
    
    
    init(simptom: Symptom, cancel: @escaping () -> Void) {
        self.simptom = simptom
        self.cancel = cancel
    }
}
