//
//  MedicalProductCardView.swift
//  XO
//
//  Created by Admin on 17.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MedicalProductCardView: UIView {
    
    private var viewModel: MedicalProductCardViewModel?
    
    private var imageView: UIImageView!
    private var labelName: UILabel!
    private var labelCountry: UILabel!
    private var labelPrice: UILabel!
    

    
    private enum LabelType {
        case name
        case country
        case price
        
        func size() -> CGFloat {
            switch self {
            case .name:
                return 16
            case .country:
                return 12
            case .price:
                return 12
            }
        }
    }
    
    init(viewModel: MedicalProductCardViewModel) {
        self.viewModel = viewModel
        super.init(frame: CGRect.zero)
        setupView()
    }
    
    private func setupView() {
        imageView = setupImageView()
        addSubview(imageView)
        labelName = setupLabel(labelType: .name, text: (viewModel?.medicalProduct.name)!)
        addSubview(labelName)
        labelCountry = setupLabel(labelType: .country, text: (viewModel?.medicalProduct.country)!)
        addSubview(labelCountry)
        labelPrice = setupLabel(labelType: .price, text: (viewModel?.medicalProduct.price)!)
        addSubview(labelPrice)
        setupConstraints()
        backgroundColor = .red
    }
    
    private func setupImageView() -> UIImageView {
        let imageView = UIImageView()
        let image = viewModel?.medicalProduct.photo
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
    
    private func setupLabel(labelType: LabelType, text: String) -> UILabel {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: labelType.size() )
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func setupConstraints() {
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        imageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2).isActive = true
        
        labelName.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 8).isActive = true
        labelName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        labelName.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        
        labelCountry.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 8).isActive = true
        labelCountry.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        labelCountry.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 8).isActive = true
        
        labelPrice.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 8).isActive = true
        labelPrice.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        labelPrice.topAnchor.constraint(equalTo: labelCountry.bottomAnchor, constant: 8).isActive = true
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
