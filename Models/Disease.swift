//
//  Disease.swift
//  XO
//
//  Created by Admin on 16.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class Disease {
    
    private(set) var name: String
    private var symptoms: [Symptom]
    var countOfSymptoms: Int { print(symptoms.count)
        return symptoms.count }
    
    init(name: String, symptoms: [Symptom]) {
        self.name = name
        self.symptoms = symptoms
    }
    
    init(name: String) {
        self.name = name
        self.symptoms = [Symptom]()
    }
    
    func addNewSymptom(_ symptom: Symptom) {
        symptoms.append(symptom)
    }
    
    func symptomForIndex(_ index: Int) -> Symptom {
        return symptoms[index]
    }
}
