//
//  AddNewMedicalProductView.swift
//  XO
//
//  Created by Admin on 11.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class AddNewMedicalProductView: UIView {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameOfMedicalProduct: UITextField!
    @IBOutlet weak var priceOfMedicalProduct: UITextField!
    @IBOutlet weak var countryOfMedicalProduct: UITextField!
    @IBOutlet weak var aboutOfMedicalProduct: UITextView!
    @IBOutlet weak var qrButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var view: UIView!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(frame: CGRect.zero)
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        Bundle.main.loadNibNamed("AddNewMedicalProductView", owner: self, options: nil)
       /* addSubview(view)
        view.frame = bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]*/
    }
    
    
    func roundingButton() {
        var path = UIBezierPath(roundedRect: saveButton.bounds, byRoundingCorners: [.bottomRight], cornerRadii: CGSize(width: layer.cornerRadius, height: layer.cornerRadius))
        var mask = CAShapeLayer()
        mask.path = path.cgPath
        saveButton.layer.mask = mask
        
        //path = UIBezierPath(roundedRect: cancelButton.bou, byRoundingCorners: <#T##UIRectCorner#>, cornerRadii: <#T##CGSize#>)
    }
    
    @objc private func qrSearch(_ sender: UIButton) {
        print("qr")
    }
    
    @objc private func save(_ sender: UIButton) {
        print("save")
    }
    
    @objc private func cancel(_ sender: UIButton) {
        print("cancel")
    }
    
}
