//
//  ViewController.swift
//  programmatic
//Users/decagon/Desktop/programmatic/programmatic/Info.plist/
//  Created by Decagon on 27/11/2021.
//

import UIKit

class CreateAccount: UIViewController {
    
    var heading: UILabel!
    var firstName: UILabel!
    var firstNameText: UITextField!
    var middleName: UILabel!
    var middleNameText: UITextField!
    var surName:UILabel!
    var surNameText:UITextField!
    var birthYear: UILabel!
    var birhYearText: UITextField!
    var gender:UILabel!
    var genderText:UITextField!
    var phone:UILabel!
    var phoneText:UITextField!
    var termService: UILabel!
    var creatAccount: UIButton!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        title = "Create your Carbon account"
        
        heading = UILabel()
        heading.translatesAutoresizingMaskIntoConstraints = false
        heading.text = "Let's set things up. Please fill out these basic details to get started."
        heading.font = UIFont.preferredFont(forTextStyle: .body)
        heading.adjustsFontForContentSizeCategory = true
        heading.textColor = .gray
        heading.textAlignment = .center
        heading.numberOfLines = 2
        view.addSubview(heading)
        
        firstName = UILabel ()
        firstName.text = "First name"
        firstName.textColor = .label
        firstName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstName)
       
        firstNameText = UITextField ()
        firstNameText.placeholder = ""
        firstNameText.text = ""
        firstNameText.translatesAutoresizingMaskIntoConstraints = false
        firstNameText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        firstNameText.layer.cornerRadius = 5
        view.addSubview(firstNameText)
        
        middleName = UILabel ()
        middleName.text = "Middle name"
        middleName.textColor = .label
        middleName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(middleName)
       
        middleNameText = UITextField ()
        middleNameText.placeholder = ""
        middleNameText.translatesAutoresizingMaskIntoConstraints = false
        middleNameText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        middleNameText.layer.cornerRadius = 5
        view.addSubview(middleNameText)
        
        surName = UILabel ()
        surName.text = "Surname"
        surName.textColor = .label
        surName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(surName)
        
        surNameText = UITextField ()
        surNameText.placeholder = ""
        surNameText.translatesAutoresizingMaskIntoConstraints = false
        surNameText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        surNameText.layer.cornerRadius = 5
        view.addSubview(surNameText)
        
        birthYear = UILabel ()
        birthYear.text = "Date of birth"
        birthYear.textColor = .label
        birthYear.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(birthYear)
        
        birhYearText = UITextField ()
        birhYearText.placeholder = "  DD/MM/YYYY"
        birhYearText.translatesAutoresizingMaskIntoConstraints = false
        birhYearText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        birhYearText.layer.cornerRadius = 5
        let uv = UIView ()
        view.addSubview(birhYearText)
        
        birhYearText.rightViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(named: "date")!
        birhYearText.rightView = uv.spacing(image:image)
        
        gender = UILabel ()
        gender.text = "Gender"
        gender.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(gender)
        
        genderText = UITextField ()
        genderText.placeholder = "  PLEASE SELECT"
//        genderText.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
        let gv = UIView()
        genderText.loadDropdownData(data: ["Male", "Female"])
        genderText.translatesAutoresizingMaskIntoConstraints = false
        genderText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        genderText.layer.cornerRadius = 5
        view.addSubview(genderText)
        
        genderText.rightViewMode = UITextField.ViewMode.always
        _ = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let img = UIImage(named: "arrow")!
        genderText.rightView = gv.spacing(image: img)
        
        phone = UILabel ()
        phone.text = "Phone number"
        phone.textColor = .label
        phone.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(phone)
        
        phoneText = UITextField ()
        phoneText.placeholder = ""
        phoneText.translatesAutoresizingMaskIntoConstraints = false
        phoneText.backgroundColor = UIColor(white: 0.9, alpha: 1)
        phoneText.layer.cornerRadius = 5
        phoneText.keyboardType = .phonePad
        view.addSubview(phoneText)
        let pv = UIView()
        phoneText.rightViewMode = UITextField.ViewMode.always
        _ = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let Rightimg = UIImage(named: "arrow")!
        phoneText.rightView = pv.spacing(image: Rightimg)
        
        let termsAndConditions: NSMutableAttributedString = {
            _ = NSMutableAttributedString()
        let firstText = "By continuing, you accept our "
        let secondText = "Terms of Service "
        let thirdText = "\n & Privacy Policy"
        let colorAttribute = [NSAttributedString.Key.foregroundColor: UIColor.systemBlue]
        let attrString = NSMutableAttributedString(string: secondText, attributes: colorAttribute)
        let attrString1 = NSMutableAttributedString(string: firstText)
        let attrString2 = NSMutableAttributedString(string: thirdText, attributes: colorAttribute)
                attrString1.append(attrString)
                attrString1.append(attrString2)
                return attrString1
            }()
        
        termService = UILabel()
        termService.attributedText = termsAndConditions
        termService.translatesAutoresizingMaskIntoConstraints = false
        termService.textAlignment = .center
        termService.numberOfLines = 2
        termService.font = UIFont.systemFont(ofSize: 14)
        view.addSubview(termService)
        
        creatAccount = UIButton()
        creatAccount.translatesAutoresizingMaskIntoConstraints = false
        creatAccount.setTitle("Create Account", for: .normal)
        creatAccount.layer.cornerRadius = 7
        creatAccount.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        creatAccount.setTitleColor(.white, for: .normal)
        creatAccount.backgroundColor = .systemGray
        view.addSubview(creatAccount)
        
        
        
        let viewLayout = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 30),
            imageView.heightAnchor.constraint(equalToConstant: 25),
            heading.topAnchor.constraint(equalTo: viewLayout.topAnchor, constant: 0),
            heading.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            heading.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            firstName.topAnchor.constraint(equalTo: heading.bottomAnchor, constant: 30),
            firstName.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 10),
            
            firstNameText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            firstNameText.topAnchor.constraint(equalTo: firstName.bottomAnchor, constant: 5),
            firstNameText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45),
            firstNameText.heightAnchor.constraint(equalToConstant: 55),
            
            middleName.topAnchor.constraint(equalTo: heading.bottomAnchor, constant: 30),
            middleName.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -83),
            
            middleNameText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            middleNameText.topAnchor.constraint(equalTo: middleName.bottomAnchor, constant: 5),
            middleNameText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45),
            middleNameText.heightAnchor.constraint(equalToConstant: 55),
            
            surName.topAnchor.constraint(equalTo: firstNameText.bottomAnchor, constant: 20),
            surName.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 10),
            
            surNameText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            surNameText.topAnchor.constraint(equalTo: surName.bottomAnchor, constant: 5),
            surNameText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95),
            surNameText.heightAnchor.constraint(equalToConstant: 60),
            surName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            birthYear.topAnchor.constraint(equalTo: surNameText.bottomAnchor, constant: 20),
            birthYear.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 10),
            
            birhYearText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            birhYearText.topAnchor.constraint(equalTo: birthYear.bottomAnchor, constant: 5),
            birhYearText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95),
            birhYearText.heightAnchor.constraint(equalToConstant: 60),
            birhYearText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            gender.topAnchor.constraint(equalTo: birhYearText.bottomAnchor, constant: 20),
            gender.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 10),
            
            genderText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            genderText.topAnchor.constraint(equalTo: gender.bottomAnchor, constant: 5),
            genderText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95),
            genderText.heightAnchor.constraint(equalToConstant: 60),
            genderText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            phone.topAnchor.constraint(equalTo: genderText.bottomAnchor, constant: 20),
            phone.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 10),
            
            phoneText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            phoneText.topAnchor.constraint(equalTo: phone.bottomAnchor, constant: 5),
            phoneText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95),
            phoneText.heightAnchor.constraint(equalToConstant: 60),
            phoneText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            termService.topAnchor.constraint(equalTo: phoneText.bottomAnchor, constant: 20),
            termService.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            termService.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            creatAccount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            creatAccount.topAnchor.constraint(equalTo: termService.bottomAnchor, constant: 5),
            creatAccount.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95),
            creatAccount.heightAnchor.constraint(equalToConstant: 65),
            creatAccount.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
    }
    
    
   @objc func didTapButton() {
       
       guard let firstName = firstNameText.text, !firstName.isEmpty, firstName != " " else {
           print("enter your first name")
           return
       }
       guard let middleName = middleNameText.text else{
           return
       }
       guard let surName = surNameText.text, !surName.isEmpty, surName != "" else {
           return
       }
       guard let dob = birhYearText.text, !dob.isEmpty, dob != "" else {
           return
       }
       guard let gender = genderText.text, !gender.isEmpty, gender != "" else {
           return
       }
       guard let phoneNumber = phoneText.text, !phoneNumber.isEmpty, phoneNumber != "" else{
           return
       }
       
       UserDefaults.standard.set(firstName, forKey: "firstname")
       UserDefaults.standard.set(surName, forKey: "surName")
       UserDefaults.standard.set(dob, forKey: "birthYear")
       UserDefaults.standard.set(gender, forKey: "gender")
       UserDefaults.standard.set(phoneNumber, forKey: "phoneNumber")
       UserDefaults.standard.set(middleName, forKey: "middleName")
       
       let sec = PersonalDetailsViewController ()
        navigationController?.pushViewController(sec, animated: true)
    }
    
}



