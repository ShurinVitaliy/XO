//
//  MedicalProductViewModel.swift
//  XO
//
//  Created by Admin on 07.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

protocol MedicalProductViewModel {
    
}

class MedicalProductViewModelImp: MedicalProductViewModel {
    
    private let router: MedicalProductViewRouter
    
    init(router: MedicalProductViewRouter) {
        self.router = router
    }

}
