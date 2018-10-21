//
//  NameConstraints.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/15/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

extension RegisterViews {
    func constraints() {
        
        self.addSubview(mainStack)
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
            mainStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 35),
            mainStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35)
            ])
        
        mainStack.addArrangedSubview(titleLabel)
        mainStack.addArrangedSubview(subTitleLabel)
        mainStack.addArrangedSubview(textBox)
        
        NSLayoutConstraint.activate([
            textBox.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            textBox.widthAnchor.constraint(equalTo: mainStack.widthAnchor, constant: 0),
            textBox.heightAnchor.constraint(equalToConstant: 45),
            ])
        
        textBox.addSubview(textBoxField)
        NSLayoutConstraint.activate([
            textBoxField.centerYAnchor.constraint(equalTo: textBox.centerYAnchor),
            textBoxField.leadingAnchor.constraint(equalTo: textBox.leadingAnchor, constant: 20),
            textBoxField.trailingAnchor.constraint(equalTo: textBox.trailingAnchor, constant: -1)
            ])
        
        mainStack.addArrangedSubview(nextBtn)
        NSLayoutConstraint.activate([
            nextBtn.widthAnchor.constraint(equalTo: mainStack.widthAnchor, constant: 0),
            nextBtn.heightAnchor.constraint(equalToConstant: 45),
            ])
        
        self.addSubview(bottomLine)
        NSLayoutConstraint.activate([
            bottomLine.heightAnchor.constraint(equalToConstant: 1),
            bottomLine.widthAnchor.constraint(equalTo: self.widthAnchor),
            bottomLine.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            bottomLine.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -80)
            ])
        
        self.addSubview(signInStackView)
        NSLayoutConstraint.activate([
            signInStackView.topAnchor.constraint(equalTo: bottomLine.bottomAnchor, constant: 15),
            signInStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            ])
    }
}
