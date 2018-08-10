//
//  MainViewRouter.swift
//  XO
//
//  Created by Admin on 01.05.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MainViewRouter {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func addNewItem(title: String, placeholder: String) {
        let extensions = Extensions(navigationController: navigationController)
        extensions.addNewItem(title: title, placeholder: placeholder)
    }
}
