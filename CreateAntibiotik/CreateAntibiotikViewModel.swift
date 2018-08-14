//
//  CreateAntibiotikViewModel.swift
//  XO
//
//  Created by Admin on 13.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

protocol CreateAntibiotikViewModel {
    
}

class CreateAntibiotikViewModelImp: CreateAntibiotikViewModel {
    
    private let router: CreateAntibiotikViewRouter
    
    init(router: CreateAntibiotikViewRouter) {
        self.router = router
    }
    
}
