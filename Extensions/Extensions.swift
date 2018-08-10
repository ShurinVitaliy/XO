//
//  Extensions.swift
//  XO
//
//  Created by Admin on 07.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class Extensions {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func addNewItem(title: String, placeholder: String) {
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        
        alertController.addTextField { (textField) in
            textField.placeholder = placeholder
        }
        
        let alertCreateAction = UIAlertAction(title: "Create", style: .default) {(alert) in
            
        }
        let alertCancelAction = UIAlertAction(title: "Cancel", style: .cancel) {(alert) in}
        
        alertController.addAction(alertCreateAction)
        alertController.addAction(alertCancelAction)
        
        navigationController.present(alertController, animated: true, completion: nil)
    }
}
