//
//  MedicalProductViewRouter.swift
//  XO
//
//  Created by Admin on 07.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MedicalProductViewRouter {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func createAlertView(addButton: UIBarButtonItem, simptom: Symptom, yCoordinate: CGFloat) -> AddCureAlertView {
        var cureAlertView = AddCureAlertView()
            cureAlertView = AddCureAlertView(viewModel: AddCuerAlertModelImp(router: AddCureAlertViewRouter(navigationController: navigationController), simptom: simptom, cancel: {
            UIView.animate(withDuration: 1, animations: {
                cureAlertView.alpha = 0
                cureAlertView.transform = CGAffineTransform(translationX: 0, y: yCoordinate)
                }, completion: {(true) in
                    cureAlertView.removeFromSuperview()
                    addButton.isEnabled = true
            })
        }))
        return cureAlertView
    }
}
