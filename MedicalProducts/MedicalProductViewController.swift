//
//  MedicalProductViewController.swift
//  XO
//
//  Created by Admin on 07.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MedicalProductViewController: UIViewController {
    
    private var viewModel : MedicalProductViewModel?
    private var scrollView : UIScrollView!
    private var searchBar : UISearchBar!
    private var medicalProductCards = [MedicalProductCardView]()
    
    convenience init(viewModel: MedicalProductViewModel) {
        self.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView = createScrollView()
        view.addSubview(scrollView)
        setupNavigationBar()
    }
    
    private func createScrollView() -> UIScrollView {
        let scrollView = UIScrollView(frame: view.bounds)
        for (index, card) in medicalProductCards.enumerated() {
            card.translatesAutoresizingMaskIntoConstraints = false
            scrollView.addSubview(card)
            setupConstraintsForIndex(card: card, index: index)
        }
        return scrollView
    }
    
    private func setupConstraintsForIndex(card: MedicalProductCardView, index: Int) {
        card.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        card.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        if index == 0 {
            card.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        } else {
            card.topAnchor.constraint(equalTo: medicalProductCards[index - 1].bottomAnchor).isActive = true
        }
        if index == medicalProductCards.count - 1 {
            card.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        }
    }
    
    private func setupNavigationBar() {
        searchBar = createSearchBar()
        navigationItem.titleView = searchBar
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewItem))
    }
    
    private func createSearchBar() -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.placeholder = viewModel?.placeholderText
        return searchBar
    }
    
    @objc private func addNewItem(_ sender: UIBarButtonItem) {
        viewModel?.addNewItem()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
