//
//  AddNewMedicalProductViewController.swift
//  XO
//
//  Created by Admin on 15.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class AddNewMedicalProductViewController: UIViewController {

    private var viewModel: AddNewMedicalProductViewModel?
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var aboutTextView: UITextView!
    
    
    convenience init(viewModel: AddNewMedicalProductViewModel) {
        self.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func scanerButton(_ sender: UIButton) {
        
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        self.removeFromParentViewController()
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        let medicalProduct = MedicalProduct(photo: photoImageView.image!, name: nameTextField.text!, country: countryTextField.text!, price: priceTextField.text, about: aboutTextView.text)
        markTheField(color: UIColor.red.cgColor)
        viewModel?.save(medicalProduct)
        markTheField(color: UIColor.black.cgColor)
        
    }
    
    func markTheField(color: CGColor) {
        switch true {
        case (self.nameTextField.text?.isEmpty)!:
            nameTextField.layer.borderColor = color
        case (self.countryTextField.text?.isEmpty)!:
            countryTextField.layer.borderColor = color
        case (self.priceTextField.text?.isEmpty)!:
            priceTextField.layer.borderColor = color
        default: break
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
