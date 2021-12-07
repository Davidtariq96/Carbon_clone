//
//  SignInViewController.swift
//  CarbonUI
//
//  Created by Decagon on 05/12/2021.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated:true)
    }
    override func loadView() {
        view = UIView ()
        view.backgroundColor = .white
        let imageView: UIImageView = {
            let imageV = UIImageView()
            imageV.contentMode = .scaleAspectFill
            imageV.translatesAutoresizingMaskIntoConstraints = false
            imageV.clipsToBounds = true
            imageV.image = UIImage (named: "logo")
            view.addSubview(imageV)
            return imageV
        }()
        
        let label:UILabel = {
           let label = UILabel()
            label.text = "Hi there, welcome back. Please sign in."
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 16)
            view.addSubview(label)
            return label
        }()
        
        let phoneNumber: UILabel = {
            let phone = UILabel()
            phone.text = "Phone number"
            phone.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(phone)
            return phone
        }()
        
        let phoneText:UITextField = {
            let phoneText = UITextField ()
            phoneText.placeholder = ""
            phoneText.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(phoneText)
            phoneText.backgroundColor = UIColor(white: 0.9, alpha: 1)
            phoneText.layer.cornerRadius = 5
            return phoneText
        }()
        
//        let pin: UILabel = {
//            let pin = UILabel()
//            pin.text = "Pin"
//            pin.translatesAutoresizingMaskIntoConstraints = false
//            view.addSubview(pin)
//            return pin
//        }()
//        let pinText:UITextField = {
//            let pinText = UITextField ()
//            view.addSubview(pinText)
//            pinText.translatesAutoresizingMaskIntoConstraints = false
//            pinText.backgroundColor = UIColor(white: 0.9, alpha: 1)
//            pinText.layer.cornerRadius = 5
//            return pinText
//        }()
//        pinText.rightViewMode = UITextField.ViewMode.always
//        let pinView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 40))
//        let button = UIButton(type: .custom)
//        button.setTitle("Forgot PIN", for: .normal)
//        button.setTitleColor(.purple, for: .normal)
//        pinView.addSubview(button)
//        pinText.rightView = pinView
        
        var passwordStackView: UIStackView = {
                let txtField = UITextField()
                txtField.translatesAutoresizingMaskIntoConstraints = false
                txtField.layer.cornerRadius = 5
                txtField.widthAnchor.constraint(lessThanOrEqualToConstant: 170).isActive = true
                txtField.heightAnchor.constraint(equalToConstant: 60).isActive = true
                let btn = UIButton()
                btn.setTitleColor(.purple, for: .normal)
                btn.setTitle("Forgot PIN?", for: .normal)
                btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
                btn.translatesAutoresizingMaskIntoConstraints = false
                btn.addTarget(self, action: #selector(didTapProfile), for: .touchUpInside)
                let innerStackView = UIStackView()
                innerStackView.translatesAutoresizingMaskIntoConstraints = false
                innerStackView.axis = NSLayoutConstraint.Axis.horizontal
                innerStackView.distribution = UIStackView.Distribution.equalSpacing
                innerStackView.alignment = UIStackView.Alignment.center
                innerStackView.layer.cornerRadius = 5
                innerStackView.backgroundColor = UIColor(white: 0.9, alpha: 1)
                innerStackView.addArrangedSubview(txtField)
                innerStackView.addArrangedSubview(btn)
                innerStackView.isLayoutMarginsRelativeArrangement = true
                innerStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 8)
                let label = UILabel()
                label.translatesAutoresizingMaskIntoConstraints = false
                label.text = "PIN"
                label.textAlignment = .left
                label.font = UIFont.boldSystemFont(ofSize: 14)
                label.heightAnchor.constraint(equalToConstant: 20).isActive = true
                let stackView = UIStackView()
                stackView.translatesAutoresizingMaskIntoConstraints = false
                stackView.axis = NSLayoutConstraint.Axis.vertical
                stackView.distribution = UIStackView.Distribution.equalCentering
                stackView.addArrangedSubview(label)
                stackView.addArrangedSubview(innerStackView)
                return stackView
            }()
        view.addSubview(passwordStackView)
               
        let newAccount: UILabel = {
           let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(label)
            label.text = "New to carbon?"
            return label
        }()
        
        let newAccButton : UIButton = {
           let button = UIButton()
            button.setTitle("Set up new account", for: .normal)
            button.setTitleColor(.purple, for: .normal)
            button.addTarget(self, action: #selector(tapCreateAcct), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(button)
            return button
        }()
        
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            phoneNumber.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50),
            phoneNumber.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            
            phoneText.topAnchor.constraint(equalTo: phoneNumber.bottomAnchor, constant: 5),
            phoneText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17),
            phoneText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.92),
            phoneText.heightAnchor.constraint(equalToConstant: 55),
            
            passwordStackView.topAnchor.constraint(equalTo: phoneText.bottomAnchor, constant: 20),
            passwordStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 1),
            passwordStackView.heightAnchor.constraint(equalToConstant: 75),
            passwordStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 17),
            
//            pin.topAnchor.constraint(equalTo: phoneText.bottomAnchor, constant: 50),
//            pin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
//
//            pinText.topAnchor.constraint(equalTo: pin.bottomAnchor, constant: 5),
//            pinText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17),
//            pinText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
//            pinText.heightAnchor.constraint(equalToConstant: 55),
            
            newAccount.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25),
            newAccount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 48),
            
            newAccButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -48),
            newAccButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
    
    @objc func didTapProfile(){
        let profile = PersonalDetailsViewController ()
        navigationController?.pushViewController(profile, animated: true)
    }
    
    
    @objc func tapCreateAcct(){
        let createAccount = CreateAccount ()
        navigationController?.pushViewController(createAccount, animated: true)
    }
}
