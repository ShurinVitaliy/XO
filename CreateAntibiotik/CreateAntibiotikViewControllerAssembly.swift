//
//  CreateAntibiotikViewControllerAssembly.swift
//  XO
//
//  Created by Admin on 13.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CreateAntibiotikViewControllerAssembly {
    
    func createController(navigationController: UINavigationController) -> UIViewController {
        let router = CreateAntibiotikViewRouter(navigationController: navigationController)
        let model = CreateAntibiotikViewModelImp(router: router)
        let controller = CreateAntibiotikViewController(viewModel: model)
        return controller
    }
}
