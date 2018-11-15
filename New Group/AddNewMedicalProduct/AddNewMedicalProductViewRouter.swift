//
//  AddNewMedicalProductViewRouter.swift
//  XO
//
//  Created by Admin on 15.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class AddNewMedicalProductViewRouter {
    let navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func wariningAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        
        navigationController.present(alert, animated: true, completion: nil)
    }
    
}
