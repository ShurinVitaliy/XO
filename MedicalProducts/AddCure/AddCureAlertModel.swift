//
//  AddCureAlertModel.swift
//  XO
//
//  Created by Admin on 04.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

protocol AddCuerAlertModel {
    func cancel()
}

class AddCuerAlertModelImp: AddCuerAlertModel {
    
    var router: AddCureAlertViewRouter
    
    init(router: AddCureAlertViewRouter) {
        self.router = router
    }
    
    func cancel() {
        router.cancel()
    }
}
