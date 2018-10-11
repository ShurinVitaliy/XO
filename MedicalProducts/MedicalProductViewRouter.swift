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
    
    func showCureCreator(symptom: Symptom, cancel: @escaping () -> Void) -> UIView {
        let model = AddCuerAlertModelImp(simptom: symptom, cancel: cancel)
        let view = AddCureAlertView(viewModel: model)
        return view
    }
}
