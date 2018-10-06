//
//  MedicalProductViewRouter.swift
//  XO
//
//  Created by Admin on 07.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MedicalProductViewRouter {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func addNewItem() {
        let router = AddCureAlertViewRouter(navigationController: navigationController)
        let model = AddCuerAlertModelImp(router: router)
        let controller = AddCureAlertView(viewModel: model)
        navigationController.present(controller, animated: true, completion: nil)
    }
}
