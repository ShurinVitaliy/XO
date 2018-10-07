//
//  AddCureAlertView.swift
//  XO
//
//  Created by Admin on 03.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class AddCureAlertView: UIView {
    
    var viewModel: AddCuerAlertModel?
    
    convenience init(viewModel: AddCuerAlertModel) {
        self.init(viewModel: viewModel)
        self.viewModel = viewModel
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    
    private func setupView() {
        
    }
}

