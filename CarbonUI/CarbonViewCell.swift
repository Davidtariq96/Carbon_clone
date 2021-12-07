//
//  CarbonViewCell.swift
//  CarbonUI
//
//  Created by Decagon on 30/11/2021.
//

import UIKit

class CarbonViewCell: UICollectionViewCell {
    var page:PageModel? {
        didSet{
            guard let page = page else {
                return
            }
            imageView.image = UIImage(named: page.pageImage)
            textView.text = page.title
            subTextView.text = page.message
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViews()
    }
    let textView: UITextView = {
       let text = UITextView()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "Stay on top of your finances. Anytime. Anywhere"
        text.textColor = .black
        text.textAlignment = .center
        text.font = UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.bold)
        text.isEditable = false
        return text
    }()
    let imageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.image = UIImage (named: "user")
        return img
    }()
    
    let subTextView: UITextView = {
       let subText = UITextView()
        subText.translatesAutoresizingMaskIntoConstraints = false
        subText.text = "Carbon your number one finacial liberation and a well trusted finacial stop. Makes finacial services faster, cheaper and convenient "
        subText.textContainer.maximumNumberOfLines = 3
        subText.textColor = .black
        subText.textAlignment = .center
        subText.backgroundColor = UIColor.clear
        subText.isEditable = false
        subText.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.medium)
        return subText
    }()

    func loadViews(){
        backgroundColor = .white
        addSubview(imageView)
        addSubview(textView)
        addSubview(subTextView)
//        addSubview(uibutton)
        
        let screenSize: CGRect = UIScreen.main.bounds
        imageView.frame = CGRect(x: 0, y: screenSize.height/2 * 0.3, width: screenSize.width, height: screenSize.height/2)
                
        textView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        textView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5).isActive = true
        textView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.3).isActive = true
        textView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        subTextView.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: -220).isActive = true
        subTextView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        subTextView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        subTextView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        subTextView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


   


