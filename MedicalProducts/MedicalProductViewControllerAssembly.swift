//
//  MedicalProductViewControllerAssembly.swift
//  XO
//
//  Created by Admin on 07.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MedicalProductViewControllerAssembly {
    
    func createController(navigationController: UINavigationController,  symptom: Symptom) -> UIViewController {
        let router = MedicalProductViewRouter(navigationController: navigationController)
        let model = MedicalProductViewModelImp(router: router)
        let controller = MedicalProductViewController(viewModel: model)
        return controller
    }
}

