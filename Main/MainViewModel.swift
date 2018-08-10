//
//  GameViewModel.swift
//  XO
//
//  Created by Admin on 01.05.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

protocol MainViewModel {
    var placeholderText: String { get }
    func addNewItem()
    
}

class MainViewModelImp: MainViewModel {
    
    private let router: MainViewRouter
    let placeholderText: String = "Search"
    let alertTitle: String = "Add new simptom"
    let alertPlaceholder: String = "New simptom name"
    
    init(router: MainViewRouter) {
        self.router = router
    }
    
    func addNewItem() {
        router.addNewItem(title: alertTitle, placeholder: alertPlaceholder)
    }
}
