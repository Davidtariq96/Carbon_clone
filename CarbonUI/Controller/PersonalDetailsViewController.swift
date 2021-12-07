//
//  PersonalDetailsViewController.swift
//  CarbonUI
//
//  Created by Decagon on 04/12/2021.
//

import UIKit

class PersonalDetailsViewController: UIViewController {
    var upadte = CreateAccount()
    
    var blank:UILabel!
    var firstName:UILabel!
    var firstNameText: UITextField!
    var middleName:UILabel!
    var middleNameText: UITextField!
    var surName:UILabel!
    var surNameText: UITextField!
    var email:UILabel!
    var emailText: UITextField!
    var dateOfBirth:UILabel!
    var dateOfBirthText: UITextField!
    var gender:UILabel!
    var genderText: UITextField!
    var phone:UILabel!
    var phoneText: UITextField!
    var maritalStatus:UILabel!
    var maritalStatusText: UITextField!
    var childrenField:UILabel!
    var childrenText: UITextField!
    var nextButton: UIButton!


    lazy var scrollView: UIScrollView = {
        var scroll = UIScrollView()
        scroll.backgroundColor = .white
        return scroll
    }()
//    func updateFields () {
//        firstNameText.text = upadte.firstNameText.text
//        UserDefaults.standard.set(firstNameText.text , forKey: "message")
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Personal details"
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)
        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1100)
        setViews()
        navigationController?.navigationBar.backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1);        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(tapIn));
        
        updateFields()
        
    }
    @objc func tapIn() {
        
    }
    
    
    func updateFields(){
        firstNameText.text = UserDefaults.standard.string(forKey: "firstname")
        middleNameText.text = UserDefaults.standard.string(forKey: "middleName")
        surNameText.text = UserDefaults.standard.string(forKey: "surName")
        dateOfBirthText.text = UserDefaults.standard.string(forKey: "birthYear")
        genderText.text = UserDefaults.standard.string(forKey: "gender")
        phoneText.text = UserDefaults.standard.string(forKey: "phoneNumber")
        
    }
    func setViews() {
        
        blank = UILabel()
        blank.backgroundColor = UIColor(red: 209/225, green: 197/225, blue: 245/225, alpha: 1)
        blank.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(blank)
        
        firstName = UILabel ()
        firstName.text = "First name"
        firstName.textColor = .label
        firstName.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(firstName)
        
        firstNameText = UITextField ()
        firstNameText.placeholder = ""
//        firstNameText.text = upadte.firstNameText.text
        firstNameText.translatesAutoresizingMaskIntoConstraints = false
        firstNameText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        firstNameText.layer.cornerRadius = 5
        scrollView.addSubview(firstNameText)
        
        firstNameText.rightViewMode = UITextField.ViewMode.always
        let imageVi = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        let img = UIImage(systemName: "lock")
        imageVi.image = img
        imageVi.tintColor = .gray
        firstNameText.rightView = imageVi
        
        middleName = UILabel ()
        middleName.text = "Middle name"
        middleName.textColor = .label
        middleName.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(middleName)
        
        middleNameText = UITextField ()
        middleNameText.placeholder = ""
        middleNameText.translatesAutoresizingMaskIntoConstraints = false
        middleNameText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        middleNameText.layer.cornerRadius = 5
        scrollView.addSubview(middleNameText)

        surName = UILabel ()
        surName.text = "Surname"
        surName.textColor = .label
        surName.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(surName)
        
        surNameText = UITextField ()
        surNameText.placeholder = ""
        surNameText.translatesAutoresizingMaskIntoConstraints = false
        surNameText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        surNameText.layer.cornerRadius = 5
        scrollView.addSubview(surNameText)
        
        surNameText.rightViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        let imgs = UIImage(systemName: "lock")
        imageView.image = imgs
        imageView.tintColor = .gray
        surNameText.rightView = imageView
        
        email = UILabel ()
        email.text = "Email address"
        email.textColor = .label
        email.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(email)
        
        emailText = UITextField ()
        emailText.placeholder = ""
        emailText.translatesAutoresizingMaskIntoConstraints = false
        emailText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        emailText.layer.cornerRadius = 5
        scrollView.addSubview(emailText)
        
        dateOfBirth = UILabel ()
        dateOfBirth.text = "Date of birth"
        dateOfBirth.textColor = .label
        dateOfBirth.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(dateOfBirth)
        
        dateOfBirthText = UITextField ()
        dateOfBirthText.placeholder = ""
        dateOfBirthText.translatesAutoresizingMaskIntoConstraints = false
        dateOfBirthText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        dateOfBirthText.layer.cornerRadius = 5
        scrollView.addSubview(dateOfBirthText)
        
        dateOfBirthText.rightViewMode = UITextField.ViewMode.always
        let dateOfBirthImageVi = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        let dateImg = UIImage(systemName: "lock")
        dateOfBirthImageVi.image = dateImg
        dateOfBirthImageVi.tintColor = .gray
        dateOfBirthText.rightView = dateOfBirthImageVi
        
        dateOfBirthText.leftViewMode = UITextField.ViewMode.always
        let dateOfBirthLeftImageVi = UIImageView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
        let dateLeftImg = UIImage(named: "date")
        dateOfBirthLeftImageVi.image = dateLeftImg
        dateOfBirthText.leftView = dateOfBirthLeftImageVi
        
        gender = UILabel ()
        gender.text = "Gender"
        gender.textColor = .label
        gender.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(gender)

        genderText = UITextField ()
        genderText.placeholder = ""
        genderText.translatesAutoresizingMaskIntoConstraints = false
        genderText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        genderText.layer.cornerRadius = 5
        scrollView.addSubview(genderText)
        
        genderText.rightViewMode = UITextField.ViewMode.always
        let genderImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        let RightImg = UIImage(systemName: "lock")
        genderImage.image = RightImg
        genderImage.tintColor = .gray
        genderText.rightView = genderImage
        
        phone = UILabel ()
        phone.text = "Phone number"
        phone.textColor = .label
        phone.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(phone)

        phoneText = UITextField ()
        phoneText.placeholder = ""
        phoneText.translatesAutoresizingMaskIntoConstraints = false
        phoneText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        phoneText.layer.cornerRadius = 5
        scrollView.addSubview(phoneText)
        
        phoneText.rightViewMode = UITextField.ViewMode.always
        let phoneImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        let phoneRightImg = UIImage(named:"arrow")
        phoneImage.image = phoneRightImg
        phoneText.rightView = phoneImage
        
        maritalStatus = UILabel ()
        maritalStatus.text = "What's your marital status?"
        maritalStatus.textColor = .label
        maritalStatus.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(maritalStatus)

        maritalStatusText = UITextField ()
        maritalStatusText.placeholder = "  married"
        maritalStatusText.translatesAutoresizingMaskIntoConstraints = false
        maritalStatusText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        maritalStatusText.layer.cornerRadius = 5
        scrollView.addSubview(maritalStatusText)
        
        maritalStatusText.rightViewMode = UITextField.ViewMode.always
        let maritalImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        let marryRightImg = UIImage(named: "arrow")
        maritalImage.image = marryRightImg
        maritalStatusText.rightView = maritalImage
        
        childrenField = UILabel ()
        childrenField.text = "How many children do you have?"
        childrenField.textColor = .label
        childrenField.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(childrenField)

        childrenText = UITextField ()
        childrenText.placeholder = "  3"
        childrenText.translatesAutoresizingMaskIntoConstraints = false
        childrenText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        childrenText.layer.cornerRadius = 5
        scrollView.addSubview(childrenText)
        
        childrenText.rightViewMode = UITextField.ViewMode.always
        let childrenImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        let childRightImg = UIImage(named: "arrow")
        childrenImage.image = childRightImg
        childrenText.rightView = childrenImage
        
        nextButton = UIButton ()
        nextButton.setTitle("Next", for: .normal)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.backgroundColor = UIColor(red: 67 / 255, green: 1 / 255, blue: 192 / 255, alpha: 1)
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.layer.cornerRadius = 7
        scrollView.addSubview(nextButton)
        

        NSLayoutConstraint.activate([
            dateOfBirthLeftImageVi.widthAnchor.constraint(equalToConstant: 30),
            dateOfBirthLeftImageVi.heightAnchor.constraint(equalToConstant: 25),
            blank.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30),
            blank.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            blank.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            blank.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 0.1),
            
            firstName.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            firstName.topAnchor.constraint(equalTo: blank.bottomAnchor, constant: 16),
            
            firstNameText.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            firstNameText.topAnchor.constraint(equalTo: firstName.bottomAnchor, constant: 5),
            firstNameText.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            firstNameText.heightAnchor.constraint(equalToConstant: 55),
            
            middleName.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            middleName.topAnchor.constraint(equalTo: firstNameText.bottomAnchor, constant: 16),
            
            middleNameText.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            middleNameText.topAnchor.constraint(equalTo: middleName.bottomAnchor, constant: 5),
            middleNameText.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            middleNameText.heightAnchor.constraint(equalToConstant: 55),
            surName.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            surName.topAnchor.constraint(equalTo: middleNameText.bottomAnchor, constant: 16),
            
            surNameText.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            surNameText.topAnchor.constraint(equalTo: surName.bottomAnchor, constant: 5),
            surNameText.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            surNameText.heightAnchor.constraint(equalToConstant: 55),
            
            email.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            email.topAnchor.constraint(equalTo: surNameText.bottomAnchor, constant: 16),
            
            emailText.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            emailText.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 5),
            emailText.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            emailText.heightAnchor.constraint(equalToConstant: 55),
            
            dateOfBirth.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            dateOfBirth.topAnchor.constraint(equalTo: emailText.bottomAnchor, constant: 16),
            
            dateOfBirthText.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            dateOfBirthText.topAnchor.constraint(equalTo: dateOfBirth.bottomAnchor, constant: 5),
            dateOfBirthText.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            dateOfBirthText.heightAnchor.constraint(equalToConstant: 55),
            
            gender.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            gender.topAnchor.constraint(equalTo: dateOfBirthText.bottomAnchor, constant: 16),

            genderText.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            genderText.topAnchor.constraint(equalTo: gender.bottomAnchor, constant: 5),
            genderText.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            genderText.heightAnchor.constraint(equalToConstant: 55),
            
            phone.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            phone.topAnchor.constraint(equalTo: genderText.bottomAnchor, constant: 16),

            phoneText.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            phoneText.topAnchor.constraint(equalTo: phone.bottomAnchor, constant: 5),
            phoneText.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            phoneText.heightAnchor.constraint(equalToConstant: 55),
            
            maritalStatus.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            maritalStatus.topAnchor.constraint(equalTo: phoneText.bottomAnchor, constant: 16),

            maritalStatusText.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            maritalStatusText.topAnchor.constraint(equalTo: maritalStatus.bottomAnchor, constant: 5),
            maritalStatusText.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            maritalStatusText.heightAnchor.constraint(equalToConstant: 55),
            
            childrenField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            childrenField.topAnchor.constraint(equalTo: maritalStatusText.bottomAnchor, constant: 16),

            childrenText.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            childrenText.topAnchor.constraint(equalTo: childrenField.bottomAnchor, constant: 5),
            childrenText.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            childrenText.heightAnchor.constraint(equalToConstant: 55),
            
            nextButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 17),
            nextButton.topAnchor.constraint(equalTo: childrenText.bottomAnchor, constant: 14),
            nextButton.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            nextButton.heightAnchor.constraint(equalToConstant: 55),
        ])
    }
    
    
    
}

