//
//  MedicalProductTableViewControllerAssembly.swift
//  XO
//
//  Created by Admin on 08.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit


class MedicalProductTableViewControllerAssembly {
    func createTablewViewController(navigationController: UINavigationController, symptom: Symptom) -> UITableViewController {
        let router = MedicalProductTableViewRouter(navigationController: navigationController)
        let model = MedicalProductTableViewModelImp(router: router, symptom: symptom)
        let controller = MedicalProductTableViewController(viewModel: model)
        return controller
    }
}

