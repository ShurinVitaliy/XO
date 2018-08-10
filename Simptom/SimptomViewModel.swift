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
    
}

class SimptomViewModelImp: SimptomViewModel {
    
    private let router: SimptomViewRouter
    let placeholderText: String = "Search"
    let alertTitle: String = "Add new simptom"
    let alertPlaceholder: String = "New simptom name"
    
    init(router: SimptomViewRouter) {
        self.router = router
    }
    
    func addNewItem() {
        router.addNewItem(title: alertTitle, placeholder: alertPlaceholder)
    }
}
