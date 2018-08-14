//
//  CreateAntibiotikViewController.swift
//  XO
//
//  Created by Admin on 13.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CreateAntibiotikViewController: UIViewController {
    
    private let viewModel: CreateAntibiotikViewModel?
    private var tableView: UITableView!
    private var addButton: UIButton!
    
    convenience init(viewModel: MedicalProductViewModel) {
        self.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
