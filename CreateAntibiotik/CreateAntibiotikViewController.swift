//
//  CreateAntibiotikViewController.swift
//  XO
//
//  Created by Admin on 13.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CreateAntibiotikViewController: UIViewController {
    
    private var viewModel: CreateAntibiotikViewModel?
    private var tableView: UITableView!
    
    convenience init(viewModel: CreateAntibiotikViewModel) {
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
