//
//  SimptomViewRouter.swift
//  XO
//
//  Created by Admin on 06.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class SimptomViewRouter {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func addNewItem(title: String, placeholder: String) {
        let extensions = Extensions(navigationController: navigationController)
        extensions.addNewItem(title: title, placeholder: placeholder)
    }
}
