//
//  SimptomViewControllerAssembly.swift
//  XO
//
//  Created by Admin on 06.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class SimptomViewControllerAssembly {
    
    func createController(navigationController: UINavigationController, disease: Disease) -> UIViewController {
        let router = SimptomViewRouter(navigationController: navigationController)
        let model = SimptomViewModelImp(router: router, disease: disease)
        let controller = SimptomViewController(viewModel: model)
        return controller
    }
}
