//
//  MedicalProductViewControllerAssembly.swift
//  XO
//
//  Created by Admin on 07.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MedicalProductViewControllerAssembly {
    func createController() -> UIViewController {
        let controller = UINavigationController()
        let router = MedicalProductViewRouter(navigationController: controller)
        let model = MedicalProductViewModelImp(router: router)
        controller.viewControllers = [MedicalProductViewController(viewModel: model)]
        return controller
    }
}

