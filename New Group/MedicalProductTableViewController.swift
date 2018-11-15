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
        let nib = UINib(nibName: "MedicalProductTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MedicalProductTableViewCell")
        createNavigationBarButtonItem()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel?.simptom.countOfMedicalProduct ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MedicalProductTableViewCell", for: indexPath) as? MedicalProductTableViewCell else { fatalError() }
        cell.updateWithModel(medicalProduct: (viewModel?.simptom.arrayOfMedicalProducts()[indexPath.row])!)
        return cell
    }
    
    func createNavigationBarButtonItem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(openMedicalProductCreater))
    }
    
    @objc private func openMedicalProductCreater(_ sender: UIBarButtonItem) {
        print("add")
        viewModel?.addNewMedicalProduct()
    }
    @objc private func addNewMedicalProduct(_ sender: UIButton) {
        print("add")
        viewModel?.addNewMedicalProduct()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

