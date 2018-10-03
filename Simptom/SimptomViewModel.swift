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
    func addNewItem(_ reloadData: @escaping () -> Void)
    func createItem(title: String) -> Void
    var disease: Disease { get }
    func didSelectRowAt(index: Int)
}

class SimptomViewModelImp: SimptomViewModel {
    
    private let router: SimptomViewRouter
    let placeholderText: String = "Search"
    let alertTitle: String = "Add new simptom"
    let alertPlaceholder: String = "New simptom name"
    let disease: Disease
    private var reloadData: (() -> Void)?
    
    init(router: SimptomViewRouter, disease: Disease) {
        self.router = router
        self.disease = disease
    }
    
    func didSelectRowAt(index: Int) {
        router.showMedicalProductOfSymptoms(symptom: disease.symptomForIndex(index))
    }
    
    func addNewItem(_ reloadData: @escaping () -> Void) {
        self.reloadData = reloadData
        router.addNewItem(title: alertTitle, placeholder: alertPlaceholder, createItem: createItem)
    }
    
    func createItem(title: String) {
        disease.addNewSymptom(Symptom(name: title))
        guard let reloadData = reloadData else { return }
        reloadData()
    }
}
