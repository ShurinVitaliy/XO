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
    func addNewItem()
}

class MedicalProductViewModelImp: MedicalProductViewModel {
    
    private let router: MedicalProductViewRouter
    let placeholderText: String = "Search"
    
    init(router: MedicalProductViewRouter) {
        self.router = router
    }
    
    func addNewItem() {
        router.addNewItem()
    }

}
