//
//  AddCureAlertViewRouter.swift
//  XO
//
//  Created by Admin on 06.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import UIKit

class AddCureAlertViewRouter {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func cancel() {
        navigationController.dismiss(animated: true, completion: nil)
    }
}
