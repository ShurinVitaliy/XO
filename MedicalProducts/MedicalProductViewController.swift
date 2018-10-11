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
    private var cancelButton: UIButton!
    private var cureAlertView: AddCureAlertView!
    
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
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        setupNavigationBar()
    }
    
    private func createScrollView() -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .gray
        scrollView.translatesAutoresizingMaskIntoConstraints = false
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
        card.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 1/3).isActive = true
        if index == 0 {
            card.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        } else {
            card.topAnchor.constraint(equalTo: medicalProductCards[index - 1].bottomAnchor, constant: 8).isActive = true
        }
        if index == medicalProductCards.count - 1 {
            card.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        }
    }
    
    private func setupNavigationBar() {
        searchBar = createSearchBar()
        navigationItem.backBarButtonItem?.title = viewModel?.simptom.name
        navigationItem.titleView = searchBar
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(showCureCreator))
    }
    
    private func createSearchBar() -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.placeholder = viewModel?.placeholderText
        return searchBar
    }
    
    @objc private func showCureCreator(_ sender: UIBarButtonItem) {
    
        sender.isEnabled = false
        cureAlertView = viewModel?.createAlertView(addButton: sender, yCoordinate: -view.bounds.maxY)
        
        cureAlertView.backgroundColor = UIColor(named: "LightGrayCustom")
        cureAlertView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cureAlertView)
        
        
        
        cureAlertView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36).isActive = true
        cureAlertView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36).isActive = true
        cureAlertView.topAnchor.constraint(equalTo: view.topAnchor, constant: 140).isActive = true
        cureAlertView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -72).isActive = true
        
        cureAlertView.layer.cornerRadius = 25
        
        cureAlertView.transform = CGAffineTransform(translationX: 0, y: -view.bounds.maxY)
        cureAlertView.alpha = 0
        UIView.animate(withDuration: 1, animations: {[weak self] in
            self?.cureAlertView.alpha = 1
            self?.cureAlertView.transform = CGAffineTransform(translationX: 0, y: 0)
        })
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
