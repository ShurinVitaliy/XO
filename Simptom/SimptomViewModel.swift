//
//  SimptomViewModel.swift
//  XO
//
//  Created by Admin on 06.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

protocol SimptomViewModel {
    var placeholderText: String { get }
    func addNewItem()
    var disease: Disease { get }
}

class SimptomViewModelImp: SimptomViewModel {
    
    private let router: SimptomViewRouter
    let placeholderText: String = "Search"
    let alertTitle: String = "Add new simptom"
    let alertPlaceholder: String = "New simptom name"
    let disease: Disease
    
    init(router: SimptomViewRouter, disease: Disease) {
        self.router = router
        self.disease = disease
    }
    
    func addNewItem() {
        router.addNewItem(title: alertTitle, placeholder: alertPlaceholder, createItem: createItem)
    }
    
    func createItem(title: String) {
        disease.addNewSymptom(Symptom(name: title))
    }
}
