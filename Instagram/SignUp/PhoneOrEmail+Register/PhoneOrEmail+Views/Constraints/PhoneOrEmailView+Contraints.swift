//
//  SigupView+Contraints.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/11/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

extension PhoneOrEmailViews {
    
    /********************************************/
    /* Tab Constraints */
    /********************************************/
    func tabConstraints() {
        self.addSubview(switchStackView)
        switchStackView.addArrangedSubview(phoneSignUp)
        switchStackView.addArrangedSubview(emailSignUp)
        NSLayoutConstraint.activate([
            switchStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
            switchStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            ])
        NSLayoutConstraint.activate([
            phoneSignUp.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.4),
            phoneSignUp.heightAnchor.constraint(equalToConstant: 48)
            ])
        NSLayoutConstraint.activate([
            emailSignUp.widthAnchor.constraint(equalTo: phoneSignUp.widthAnchor),
            emailSignUp.heightAnchor.constraint(equalToConstant: 48)
            ])
        phoneSignUp.addSubview(line1)
        NSLayoutConstraint.activate([
            line1.topAnchor.constraint(equalTo: phoneSignUp.bottomAnchor, constant: 0),
            line1.widthAnchor.constraint(equalTo: phoneSignUp.widthAnchor, constant: 0),
            line1.leadingAnchor.constraint(equalTo: phoneSignUp.leadingAnchor)
            ])
        emailSignUp.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.topAnchor.constraint(equalTo: emailSignUp.bottomAnchor, constant: 0),
            line2.widthAnchor.constraint(equalTo: emailSignUp.widthAnchor, constant: 0),
            line2.leadingAnchor.constraint(equalTo: emailSignUp.leadingAnchor)
            ])
    }
    
    /********************************************/
    /* Register Stack Constraints */
    /********************************************/
    func registerConstraints() {
        self.addSubview(registerStack)
        NSLayoutConstraint.activate([
            registerStack.topAnchor.constraint(equalTo: switchStackView.bottomAnchor, constant: 10),
            registerStack.leadingAnchor.constraint(equalTo: switchStackView.leadingAnchor, constant: 0),
            ])
        registerStack.addArrangedSubview(textBox)
        NSLayoutConstraint.activate([
            textBox.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            textBox.widthAnchor.constraint(equalTo: switchStackView.widthAnchor, constant: 0),
            textBox.heightAnchor.constraint(equalToConstant: 45),
            ])
        textBox.addSubview(mobileCode)
        NSLayoutConstraint.activate([
            mobileCode.leadingAnchor.constraint(equalTo: textBox.leadingAnchor, constant: 20),
            mobileCode.centerYAnchor.constraint(equalTo: textBox.centerYAnchor, constant: 0)
            ])
        textBox.addSubview(verticalLine)
        NSLayoutConstraint.activate([
            verticalLine.centerYAnchor.constraint(equalTo: textBox.centerYAnchor, constant: 0),
            verticalLine.leadingAnchor.constraint(equalTo: mobileCode.trailingAnchor, constant: 10),
            ])
        textBox.addSubview(textBoxField)
        textBoxField.becomeFirstResponder()
        textFieldsCenterY = textBoxField.centerYAnchor.constraint(equalTo: textBox.centerYAnchor, constant: 0)
        textFieldTrailing = textBoxField.trailingAnchor.constraint(equalTo: textBox.trailingAnchor, constant: 0)
        phoneLeading = textBoxField.leadingAnchor.constraint(equalTo: verticalLine.trailingAnchor, constant: 20)
        phoneWidth = textBoxField.widthAnchor.constraint(equalTo: textBox.widthAnchor, multiplier: 0.66)
        emailLeading = textBoxField.leadingAnchor.constraint(equalTo: textBox.leadingAnchor, constant: 20)
        emailWidth = textBoxField.widthAnchor.constraint(equalTo: textBox.widthAnchor, multiplier: 0.86)
        NSLayoutConstraint.activate([
            phoneLeading!,textFieldsCenterY!,phoneWidth!,textFieldTrailing!
            ])
        registerStack.addArrangedSubview(nextBtn)
        NSLayoutConstraint.activate([
            nextBtn.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            nextBtn.widthAnchor.constraint(equalTo: switchStackView.widthAnchor, constant: 0),
            nextBtn.heightAnchor.constraint(equalToConstant: 45),
            ])
        registerStack.addArrangedSubview(textTerms)
        NSLayoutConstraint.activate([textTerms.heightAnchor.constraint(equalTo: nextBtn.heightAnchor)])
    }
}
