//
//  Phone&EmailViews.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/10/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class PhoneOrEmailViews: UIView, UITextFieldDelegate {
    /********************************************/
    /* StackView Tab Switch */
    /********************************************/
    let switchStackView:UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    /********************************************/
    /* Phone Sign Up Tab */
    /********************************************/
    let phoneSignUp:UIButton = {
        let text = UIButton(type: .system)
        text.setTitle("Phone", for: .normal)
        text.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.setTitleColor(UIColor.black, for: .normal)
        return text
    }()
    /********************************************/
    /* Email Sign Up Tab */
    /********************************************/
    let emailSignUp:UIButton = {
        let text = UIButton(type: .system)
        text.setTitle("Email", for: .normal)
        text.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.setTitleColor(UIColor(red:0.56, green:0.57, blue:0.56, alpha:1.00), for: .normal)
        return text
    }()
    /********************************************/
    /* BottonLines for Phone & Email */
    /********************************************/
    let line1:UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        line.backgroundColor = UIColor(red:0.59, green:0.60, blue:0.59, alpha:1.00)
        return line
    }()
    let line2:UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        line.backgroundColor = UIColor(red:0.92, green:0.92, blue:0.92, alpha:1.00)
        return line
    }()
    
    
    var phone = true
    
    
    /********************************************/
    /* Registration Stack View */
    /********************************************/
    let registerStack:UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.spacing = 10
        return sv
    }()
    
    
    /********************************************/
    /* Text Box Container */
    /********************************************/
    let textBox:UIView = {
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor =  UIColor(red:0.98, green:0.98, blue:0.98, alpha:1.00)
        box.layer.borderColor = UIColor(red:0.92, green:0.92, blue:0.92, alpha:1.00).cgColor
        box.layer.borderWidth = 1
        box.layer.cornerRadius = 5
        return box
    }()
    /********************************************/
    /* Country Code */
    /********************************************/
    let mobileCode:UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "US +1"
        text.textColor = UIColor(red:0.20, green:0.59, blue:0.94, alpha:1.00)
        return text
    }()
    /********************************************/
    /* Vertical Line */
    /********************************************/
    let verticalLine:UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.widthAnchor.constraint(equalToConstant: 1).isActive = true
        line.heightAnchor.constraint(equalToConstant: 30).isActive = true
        line.backgroundColor = UIColor(red:0.88, green:0.87, blue:0.87, alpha:1.00)
        return line
    }()
    /********************************************/
    /* TextField */
    /********************************************/
    let textBoxField:UITextField = {
        let field = UITextField()
        field.placeholder = "Phone Number"
        field.keyboardType = .asciiCapableNumberPad
        field.translatesAutoresizingMaskIntoConstraints = false
        field.clearButtonMode = .whileEditing
        field.keyboardType = .asciiCapableNumberPad
        return field
    }()
    // Constraints
    var textFieldsCenterY:NSLayoutConstraint?
    var phoneLeading:NSLayoutConstraint?
    var textFieldTrailing:NSLayoutConstraint?
    var phoneWidth:NSLayoutConstraint?
    var emailLeading:NSLayoutConstraint?
    var emailTrailing:NSLayoutConstraint?
    var emailWidth:NSLayoutConstraint?
    /********************************************/
    /* Submit Button */
    /********************************************/
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
    /********************************************/
    /* Terms */
    /********************************************/
    let textTerms:UITextView = {
        let text = UITextView()
        text.textAlignment = .center
        text.text = "You may receive SMS updates from\nInstagram and can out at any time"
        text.font = UIFont.systemFont(ofSize: 12)
        text.textColor = UIColor(red:0.65, green:0.65, blue:0.65, alpha:1.00)
        return text
    }()
    /********************************************/
    /* Error in Validation */
    /********************************************/
    let errorText:UILabel = {
        let text = UILabel()
        text.text = "Looks like your phone number may be incorrect. Please try entering your fill number, including the area code."
        text.textColor = UIColor(red:0.94, green:0.22, blue:0.26, alpha:1.00)
        text.font = UIFont.systemFont(ofSize: 12)
        text.textAlignment = .left
        text.numberOfLines = 0
        return text
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        tabConstraints()
        registerConstraints()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

