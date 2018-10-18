//
//  AddCureAlertView.swift
//  XO
//
//  Created by Admin on 03.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class AddCureAlertView: UIView {
    
    private enum ButtonType {
        case cancel
        case save
        case edit
        
        func title() -> String {
            switch self {
            case .cancel:
                return "Cancel"
            case .save:
                return "Save"
            case .edit:
                return "Edit"
            }
        }
    }
    
    var viewModel: AddCuerAlertModel?
    private var cancelButton: UIButton!
    private var addCureButton: UIButton!
    private var editButton: UIButton!
    private var textFieldCountry: UITextField!
    private var textFieldPrice: UITextField!
    private var textViewAbout: UITextView!
    private var textFieldName: UITextField!
    private var photoImage: UIImageView!
    private var editFlag: Bool
    
    init(viewModel: AddCuerAlertModel, editFlag: Bool) {
        self.viewModel = viewModel
        self.editFlag = editFlag
        super.init(frame: CGRect.zero)
        setupView()
    }
    
    init(editFlag: Bool) {
        self.editFlag = editFlag
        super.init(frame: CGRect.zero)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var path = UIBezierPath(roundedRect: cancelButton.bounds, byRoundingCorners: [.bottomLeft], cornerRadii: CGSize(width: layer.cornerRadius, height: layer.cornerRadius))
        var mask = CAShapeLayer()
        mask.path = path.cgPath
        cancelButton.layer.mask = mask
        
        path = UIBezierPath(roundedRect: cancelButton.bounds, byRoundingCorners: [.bottomRight], cornerRadii: CGSize(width: layer.cornerRadius, height: layer.cornerRadius))
        mask = CAShapeLayer()
        mask.path = path.cgPath
        addCureButton.layer.mask = mask
    }
    
    func setupView() {
        cancelButton = setupButton(buttonType: ButtonType.cancel)
        addSubview(cancelButton)
        if editFlag {
            editButton = setupButton(buttonType: ButtonType.edit)
            addSubview(editButton)
        } else {
            addCureButton = setupButton(buttonType: ButtonType.save)
            addSubview(addCureButton)
        }
        textFieldName = setupTextFieldName()
        addSubview(textFieldName)
        textFieldCountry = setupTextField(placeholder: "Country")
        addSubview(textFieldCountry)
        textFieldPrice = setupTextField(placeholder: "Price")
        addSubview(textFieldPrice)
        textViewAbout = setupTextViewAbout()
        addSubview(textViewAbout)
        photoImage = setupImage()
        addSubview(photoImage)
        setupConstraints()
    }
    
    private func setupButton(buttonType: ButtonType) -> UIButton {
        let button = UIButton()
        button.setTitle(buttonType.title(), for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.darkGray
        switch buttonType {
        case .cancel: button.addTarget(self, action: #selector(cancel), for: UIControlEvents.touchUpInside)
        case .save: button.addTarget(self, action: #selector(save), for: UIControlEvents.touchUpInside)
        case .edit: button.addTarget(self, action: #selector(edit), for: UIControlEvents.touchUpInside)
        }
        return button
    }
    
    private func setupTextFieldName() -> UITextField {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.font = UIFont.boldSystemFont(ofSize: 16)
        textField.placeholder = "Name"
        textField.layer.cornerRadius = 10
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }
    
    private func setupTextField(placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.font = UIFont.boldSystemFont(ofSize: 10)
        textField.placeholder = placeholder
        textField.layer.cornerRadius = 10
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }
    
    private func setupTextViewAbout() -> UITextView {
        let textView = UITextView()
        textView.layer.cornerRadius = 10
        textView.font = UIFont.boldSystemFont(ofSize: 10)
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }
    
    private func setupImage() -> UIImageView {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 25
        imageView.image = #imageLiteral(resourceName: "defaultMedicalProductImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pickImage)))
        return imageView
    }
    
    @objc private func pickImage(sender: UITapGestureRecognizer) {
        print("ok")
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        viewModel?.pickImage(imagePickerController: imagePickerController)
    }
    
    private func setupTextView(placeholder: String) -> UITextView {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }
    
    private func setupConstraints() {
        
        photoImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        photoImage.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        photoImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2).isActive = true
        photoImage.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2).isActive = true
        
        textFieldName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        textFieldName.topAnchor.constraint(equalTo: photoImage.bottomAnchor, constant: 8).isActive = true
        textFieldName.widthAnchor.constraint(equalTo: widthAnchor, constant: -32).isActive = true
        textFieldName.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        textFieldCountry.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        textFieldCountry.topAnchor.constraint(equalTo: textFieldName.bottomAnchor, constant: 8).isActive = true
        textFieldCountry.heightAnchor.constraint(equalToConstant: 24).isActive = true
        textFieldCountry.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: -17).isActive = true
        
        textFieldPrice.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        textFieldPrice.topAnchor.constraint(equalTo: textFieldName.bottomAnchor, constant: 8).isActive = true
        textFieldPrice.heightAnchor.constraint(equalToConstant: 24).isActive = true
        textFieldPrice.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: -17).isActive = true
        
        textViewAbout.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        textViewAbout.topAnchor.constraint(equalTo: textFieldPrice.bottomAnchor, constant: 8).isActive = true
        textViewAbout.widthAnchor.constraint(equalTo: widthAnchor, constant: -32).isActive = true
        textViewAbout.bottomAnchor.constraint(equalTo: cancelButton.topAnchor, constant: -8).isActive = true
        
        cancelButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        cancelButton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        cancelButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: -1).isActive = true
        
        addCureButton.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        addCureButton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        addCureButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: -1).isActive = true
    }
    
    @objc private func edit(_ sender: UIButton) {
        
    }
    
    @objc private func save(_ sender: UIButton) {
        if !(textFieldName.text?.isEmpty)! && !(textFieldCountry.text?.isEmpty)! {
            viewModel?.createNewMedicalProduct(photo: photoImage.image!, name: textFieldName.text!, country: textFieldCountry.text!, price: textFieldPrice.text, about: textViewAbout.text)
        } else {
            viewModel?.alertWarning()
        }
        
    }
    
    @objc private func cancel(_ sender: UIButton) {
        viewModel?.cancel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}

extension AddCureAlertView: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("photo not found: \(info)")
        }
        photoImage.image = selectedImage
        picker.dismiss(animated: true, completion: nil)
    }
}
