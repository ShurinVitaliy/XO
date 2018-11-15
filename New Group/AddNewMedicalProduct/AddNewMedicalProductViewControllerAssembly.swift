//
//  AddNewMedicalProductViewControllerAssembly.swift
//  XO
//
//  Created by Admin on 15.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class AddNewMedicalProductViewControllerAssembly {
    func createController(navigationController: UINavigationController, symptom: Symptom) -> UIViewController {
        let router = AddNewMedicalProductViewRouter(navigationController: navigationController)
        let model = AddNewMedicalProductViewModelImp(symptom: symptom, router: router)
        let controller = AddNewMedicalProductViewController(viewModel: model)
        return controller
    }
    
}
