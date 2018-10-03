//
//  GameViewModel.swift
//  XO
//
//  Created by Admin on 01.05.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

protocol MainViewModel {
    var placeholderText: String { get }
    func addNewItem(_ reloadData: @escaping () -> Void)
    func createItem(title: String) -> Void
    var diseases: [Disease] { get }
    func didSelectRowAt(index: Int)
}

class MainViewModelImp: MainViewModel {
    
    private let router: MainViewRouter
    let placeholderText: String = "Search"
    private let alertTitle: String = "Add new illness"
    private let alertPlaceholder: String = "New illness name"
    private(set) var diseases = [Disease]()
    private var reloadData: (() -> Void)?
    
    init(router: MainViewRouter) {
        self.router = router
    }
    
    func didSelectRowAt(index: Int) {
        router.showSymptomsOfDiesease(diesease: diseases[index])
    }
    
    func addNewItem(_ reloadData: @escaping () -> Void) {
        self.reloadData = reloadData
        router.addNewItem(title: alertTitle, placeholder: alertPlaceholder, createItem: createItem)
    }
    
    func createItem(title: String) {
        diseases.append(Disease(name: title))
        guard let reloadData = reloadData else { return }
        reloadData()
    }
}
