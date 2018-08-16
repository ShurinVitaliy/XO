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
    
    func addNewItem(title: String, placeholder: String, createItem: @escaping (String) -> Void) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Create", style: .default, handler: { (action) in
            createItem(alert.textFields?.first?.text ?? "")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = placeholder
        })
        navigationController.present(alert, animated: true, completion: nil)
    }
}
