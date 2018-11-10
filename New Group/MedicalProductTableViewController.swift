//
//  TableOfMedicalProductViewController.swift
//  XO
//
//  Created by Admin on 08.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MedicalProductTableViewController: UITableViewController {
    private var viewModel: MedicalProductTableViewModel?
    
    convenience init(viewModel: MedicalProductTableViewModel) {
        self.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

