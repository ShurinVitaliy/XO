//
//  MedicalProductCardView.swift
//  XO
//
//  Created by Admin on 17.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MedicalProductCardView: UIView {
    
    private var viewModel: MedicalProductCardViewModel
    private var imageView: UIImageView!
    private var label: UILabel!
    
    convenience init(viewModel: MedicalProductCardViewModel) {
        self.init(viewModel: viewModel)
        self.viewModel = viewModel
        setupView()
    }
    
    private func setupView() {
        imageView = setupImageView(image: nil)
        addSubview(imageView)
        label = setupLabel(text: "Name")
        addSubview(label)
        setupConstraints()
    }
    
    private func setupImageView(image: UIImage?) -> UIImageView {
        let imageView = UIImageView(frame: CGRect.zero)
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
    
    private func setupLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func setupConstraints() {
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
