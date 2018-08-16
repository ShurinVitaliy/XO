//
//  MainViewController.swift
//  XO
//
//  Created by Admin on 01.05.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    private var viewModel: MainViewModel?
    private var searchBar: UISearchBar!
    private var tableView: UITableView!
    
    convenience init(viewModel: MainViewModel) {
        self.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = createTableView()
        view.addSubview(tableView)
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        searchBar = createSearchBar()
        navigationItem.titleView = searchBar
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewItem))
    }
   
    private func createTableView() -> UITableView {
        let tableView = UITableView(frame: view.bounds)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        return tableView
    }
    
    private func createSearchBar() -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.placeholder = viewModel?.placeholderText
        return searchBar
    }
    
    @objc private func addNewItem(_ sender: UIBarButtonItem) {
        viewModel?.addNewItem({ [weak self] in
            self?.tableView.reloadData()
        })
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.diseases.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = viewModel?.diseases[indexPath.row].name
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.didSelectRowAt(index: indexPath.row)
    }
}

