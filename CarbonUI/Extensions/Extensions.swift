//
//  Extensions.swift
//  CarbonUI
//
//  Created by Decagon on 07/12/2021.
//

import UIKit
extension UIView {
    func spacing(image : UIImage)-> UIView {
        let container = UIView ()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.widthAnchor.constraint(equalToConstant: 30).isActive = true
        container.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        let imageV = UIImageView()
        imageV.image = image
        imageV.translatesAutoresizingMaskIntoConstraints = false
        imageV.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageV.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        container.addSubview(imageV)
        imageV.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        return container
        
    }
}

//extension UIView {
//    func forgetPassword(button: UIButton) {
//
//    }


extension UITextField {
   func loadDropdownData(data: [String]) {
       self.inputView = PickerView(pickerData: data, dropdownField: self)
   }
}
