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
    
    func pickImage(imagePickerController: UIImagePickerController) {
        navigationController.present(imagePickerController, animated: true, completion: nil)
    }
    
    func alertWarning() {
        let alert = UIAlertController(title: "WARNING", message: "XD", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        navigationController.present(alert, animated: true, completion: nil)
    }
}
