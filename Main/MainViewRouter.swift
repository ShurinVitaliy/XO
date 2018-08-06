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
    
    func addNewItem() {
        let alertController = UIAlertController(title: "Create new simptom", message: nil, preferredStyle: .alert)
        
        alertController.addTextField { (textField) in
            textField.placeholder = "New simptom name"
        }
        
        let alertCreateAction = UIAlertAction(title: "Create", style: .default) {(alert) in
            
        }
        let alertCancelAction = UIAlertAction(title: "Cancel", style: .cancel) {(alert) in}
        
        alertController.addAction(alertCreateAction)
        alertController.addAction(alertCancelAction)

        navigationController.present(alertController, animated: true, completion: nil)
    }
}
