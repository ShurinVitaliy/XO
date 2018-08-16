//
//  CreateItemAllertController.swift
//  XO
//
//  Created by Admin on 07.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CreateItemAlertController: UIAlertController {
    
    private var viewModel: CreateItemAlertViewModel?
    private var textField: UITextField!
    
    convenience init(viewModel: CreateItemAlertViewModel) {
        self.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel?.title
        textField = UITextField()
        
        
        addAction(UIAlertAction(title: "Create", style: .default) {(alert) in
            self.viewModel?.create(self.textField.text ?? "dsdasd")
        })
        addAction(UIAlertAction(title: "Cancel", style: .cancel) {(alert) in})
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
