//
//  CreateItemAlertViewModel.swift
//  XO
//
//  Created by Admin on 15.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

protocol CreateItemAlertViewModel {
    var title: String { get }
    var placeHolder: String { get }
    var create: (String) -> Void { get }
}

class CreateItemAlertViewModelImp: CreateItemAlertViewModel {
    
    var title: String
    var placeHolder: String
    var create: (String) -> Void
    
    init(title: String, placeHolder: String, create: @escaping (String) -> Void) {
        self.title = title
        self.placeHolder = placeHolder
        self.create = create
        print("okey")
    }
}
