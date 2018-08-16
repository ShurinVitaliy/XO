//
//  SimptomViewController.swift
//  XO
//
//  Created by Admin on 06.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class SimptomViewController: UIViewController {
    
    private var viewModel : SimptomViewModel?
    private var tableview : UITableView!
    
    convenience init(viewModel: SimptomViewModel) {
        self.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview = createTableView()
        view.addSubview(tableview)
        setupNavigationBar()
        navigationItem.title = viewModel?.disease.name
    }
    
    private func createTableView() -> UITableView {
        let tableView = UITableView(frame: view.bounds)
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        return tableView
    }
    
      private func setupNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewSimptom))
    }
    
    @objc private func addNewSimptom(_ sender: UIBarButtonItem) {
        viewModel?.addNewItem()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension SimptomViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        return cell
    }
}



