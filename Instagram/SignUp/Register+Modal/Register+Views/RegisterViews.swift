//
//  Name+Views.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/15/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class RegisterViews: UIView {
    
    let mainStack:UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.spacing = 15
        return sv
    }()
    var topToView:NSLayoutConstraint?
    var topToPhoto:NSLayoutConstraint?
    
    let addImageBtn:UIButton = {
        let image = UIButton(type: .system)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 76).isActive = true
        image.widthAnchor.constraint(equalToConstant: 76).isActive = true
        return image
    }()
    var imageCenterX:NSLayoutConstraint?
    var imageTop:NSLayoutConstraint?
    
    let titleLabel:UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.font = UIFont.systemFont(ofSize: 23, weight: .light)
        text.text = "Add Your Name"
        text.numberOfLines = 0
        return text
    }()
    
    let subTitleLabel:UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.font = UIFont.systemFont(ofSize: 14)
        text.text = "Add your name so friends can find you."
        text.numberOfLines = 0
        return text
    }()
    
    let textBox:UIView = {
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor =  UIColor(red:0.98, green:0.98, blue:0.98, alpha:1.00)
        box.layer.borderColor = UIColor(red:0.92, green:0.92, blue:0.92, alpha:1.00).cgColor
        box.layer.borderWidth = 1
        box.layer.cornerRadius = 5
        return box
    }()
    
    let textBoxField:UITextField = {
        let field = UITextField()
        field.placeholder = "Full name"
        field.translatesAutoresizingMaskIntoConstraints = false
        field.clearButtonMode = .whileEditing
        field.becomeFirstResponder()
        return field
    }()
    
    let errorText:UILabel = {
        let text = UILabel()
        text.text = "Looks like your phone number may be incorrect. Please try entering your fill number, including the area code."
        text.textColor = UIColor(red:0.94, green:0.22, blue:0.26, alpha:1.00)
        text.font = UIFont.systemFont(ofSize: 12)
        text.textAlignment = .left
        text.numberOfLines = 0
        return text
    }()
    
    let nextBtn:UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 5
        btn.setTitle("Next", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = UIColor(red:0.60, green:0.79, blue:0.97, alpha:1.00)
        btn.isUserInteractionEnabled = false
        return btn
    }()
    
    let bottomLine:UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = UIColor(red:0.93, green:0.94, blue:0.94, alpha:1.00)
        return line
    }()
    
    let signInStackView:UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .horizontal
        sv.spacing = 5
        let text = UILabel()
        text.text = "Already have an account?"
        text.textColor = UIColor(red:0.70, green:0.70, blue:0.70, alpha:1.00)
        text.font = .systemFont(ofSize: 13)
        let btn = UIButton(type: .system)
        btn.setTitle("Sign In", for: .normal)
        btn.setTitleColor(UIColor(red:0.22, green:0.59, blue:0.94, alpha:1.00), for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 13)
        sv.addArrangedSubview(text)
        sv.addArrangedSubview(btn)
        return sv
    }()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        constraints()
        self.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
        self.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyBoard() {
        textBoxField.endEditing(true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
