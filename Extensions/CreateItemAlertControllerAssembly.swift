//
//  CreateItemAlertControllerAssembly.swift
//  XO
//
//  Created by Admin on 15.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CreateItemAlertControllerAssembly {
    
    func createController(title: String, placeHolder: String, create: @escaping (String) -> Void) -> UIAlertController {
        let model = CreateItemAlertViewModelImp(title: title, placeHolder: placeHolder, create: create)
        let controller = CreateItemAlertController(viewModel: model)
        return controller
    }
}
