//
//  SimptomViewModel.swift
//  XO
//
//  Created by Admin on 06.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

protocol SimptomViewModel {
    
}

class SimptomViewModelImp: SimptomViewModel {
    
    private let router: SimptomViewRouter
    
    init(router: SimptomViewRouter) {
        self.router = router
    }
    
}
