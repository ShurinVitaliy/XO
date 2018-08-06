//
//  SimptomViewControllerAssembly.swift
//  XO
//
//  Created by Admin on 06.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class SimptomViewControllerAssembly {
    
    func createController() -> UIViewController {
        let controller = UINavigationController()
        let router = SimptomViewRouter(navigationController: controller)
        let model = SimptomViewModelImp(router: router)
        controller.viewControllers = [SimptomViewController(viewModel: model)]
        return controller
    }
}
