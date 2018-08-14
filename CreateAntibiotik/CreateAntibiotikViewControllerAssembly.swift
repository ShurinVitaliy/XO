//
//  CreateAntibiotikViewControllerAssembly.swift
//  XO
//
//  Created by Admin on 13.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CreateAntibiotikViewControllerAssembly {
    
    func createController() -> UIViewController {
        let controller = UINavigationController()
        let router = CreateAntibiotikViewRouter(navigationsController: controller)
        let model = CreateAntibiotikViewModelImp(router: router)
        controller.viewControllers = [CreateAntibiotikViewController(viewModel: model)]
    }
}
