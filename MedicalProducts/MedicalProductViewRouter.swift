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
    
    func createAlertView(view: UIScrollView, simptom: Symptom, yCoordinate: CGFloat, addMedProd: @escaping (Symptom) -> Void) -> AddCureAlertView {
        var cureAlertView = AddCureAlertView()
        cureAlertView = AddCureAlertView(viewModel: AddCuerAlertModelImp(router: AddCureAlertViewRouter(navigationController: navigationController), simptom: simptom, cancel: {
            UIView.animate(withDuration: 1, animations: {
                cureAlertView.alpha = 0
                cureAlertView.transform = CGAffineTransform(translationX: 0, y: yCoordinate)
                view.alpha = 1
                }, completion: {(true) in
                    cureAlertView.removeFromSuperview()
            })}, save: { (result) in
                addMedProd(result)
                cureAlertView.alpha = 1
                UIView.animate(withDuration: 1, animations: {
                    cureAlertView.alpha = 0
                    cureAlertView.transform = CGAffineTransform(translationX: 0, y: -yCoordinate)
                    view.alpha = 1
                }, completion: {(true) in
                    cureAlertView.removeFromSuperview()
            })},
                 edit: { (result) in
                    
                    
            }
            ))
        return cureAlertView
    }
    
  //  func editMedicalProduct(view: UIScrollView, addButton: UIBarButtonItem, simptom: Symptom)
}
