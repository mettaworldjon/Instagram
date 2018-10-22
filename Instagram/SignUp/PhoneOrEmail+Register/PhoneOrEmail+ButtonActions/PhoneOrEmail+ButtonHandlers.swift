//
//  ButtonHandlers.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/10/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

extension PhoneOrEmailController {
    
    func setUpButtonHandlers() {
        ui.phoneSignUp.addTarget(self, action: #selector(phoneToggle), for: .touchUpInside)
        ui.emailSignUp.addTarget(self, action: #selector(emailToggle), for: .touchUpInside)
        ui.nextBtn.addTarget(self, action: #selector(nextBtn), for: .touchUpInside)
        ui.textBoxField.addTarget(self, action: #selector(textField), for: UIControl.Event.editingChanged)
    }
    
    @objc func phoneToggle() {
        if !ui.phone {
            UIView.animate(withDuration: 0.2) {
                // print("Activate Phone")
                self.ui.phoneSignUp.setTitleColor(UIColor.black, for: .normal)
                self.ui.line1.backgroundColor = UIColor(red:0.59, green:0.60, blue:0.59, alpha:1.00)
                self.ui.emailSignUp.setTitleColor(UIColor(red:0.56, green:0.57, blue:0.56, alpha:1.00), for: .normal)
                self.ui.line2.backgroundColor = UIColor(red:0.92, green:0.92, blue:0.92, alpha:1.00)
                self.ui.textBoxField.placeholder = "Phone Number"
                self.ui.verticalLine.alpha = 1
                self.ui.mobileCode.alpha = 1
                self.ui.emailLeading?.isActive = false
                self.ui.phoneLeading?.isActive = true
                self.ui.textFieldsCenterY?.isActive = true
                self.ui.phoneWidth?.isActive = true
                self.ui.layoutIfNeeded()
                self.ui.phone = true
                self.ui.textTerms.alpha = 1
                self.ui.textBoxField.keyboardType = .asciiCapableNumberPad
                self.ui.textBoxField.reloadInputViews()
            }
        }
    }
    
    @objc func emailToggle() {
        if ui.phone {
            print("Switching to Email")
            UIView.animate(withDuration: 0.2, animations: {
                // print("Activate Email")
                self.ui.phoneSignUp.setTitleColor(UIColor(red:0.56, green:0.57, blue:0.56, alpha:1.00), for: .normal)
                self.ui.line1.backgroundColor = UIColor(red:0.92, green:0.92, blue:0.92, alpha:1.00)
                self.ui.emailSignUp.setTitleColor(UIColor.black, for: .normal)
                self.ui.line2.backgroundColor = UIColor(red:0.59, green:0.60, blue:0.59, alpha:1.00)
                self.ui.verticalLine.alpha = 0
                self.ui.mobileCode.alpha = 0
                self.ui.textTerms.alpha = 0
                self.ui.textBoxField.keyboardType = .emailAddress
                self.ui.textBoxField.reloadInputViews()
            }) { (_) in
                UIView.animate(withDuration: 0.2, animations: {
                    self.ui.textBoxField.placeholder = "Email Address"
                    self.ui.phoneLeading?.isActive = false
                    self.ui.phoneWidth?.isActive = false
                    self.ui.emailLeading?.isActive = true
                    self.ui.layoutIfNeeded()
                    self.ui.phone = false
                })
            }
        }
    }
    
    
    @objc func nextBtn() {
        if ui.phone {
            print("Registering Using Phone Number")
            guard var number = ui.textBoxField.text else { return }
            number = number.replacingOccurrences(of: "(", with: "")
            number = number.replacingOccurrences(of: ")", with: "")
            number = number.replacingOccurrences(of: " ", with: "-")
            let isValidNumber = validateNumber(value: number)
            if isValidNumber {
                print("Valid Number, on to next screen")
                // Create New Controller for Next Page!
                self.registerData.addUserDataToRegisteredDataArray(dictionaryName: .phone, data: number, dataType: .phone)
                let nameController = NameController(title: "Add Your Name", subTitle: "Add your name so friends can find you", textFieldText: "Full name", addPhotoImage: nil)
                nameController.registerData = self.registerData
                self.navigationController?.pushViewController(nameController, animated: true)
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    self.ui.errorText.text = "Looks like your phone number may be incorrect. Please try entering your fill number, including the area code."
                    self.ui.registerStack.insertArrangedSubview(self.ui.errorText, at: 1)
                }) { (_) in
                    self.ui.errorText.alpha = 1
                }
            }
        } else {
            print("Registering Using Email Address")
            guard let safeEmail = ui.textBoxField.text else { return }
            let isValidEmail = validEmail(testStr: safeEmail)
            if isValidEmail {
                print("Valid Email, on to next screen")
                // Create New Controller for Next Page!
                self.registerData.addUserDataToRegisteredDataArray(dictionaryName: .email, data: safeEmail, dataType: .email)
                let nameController = NameController(title: "Add Your Name", subTitle: "Add your name so friends can find you", textFieldText: "Full name", addPhotoImage: nil)
                nameController.registerData = self.registerData
                self.navigationController?.pushViewController(nameController, animated: true)
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    self.ui.errorText.text = "Please Enter Valid Email"
                    self.ui.registerStack.insertArrangedSubview(self.ui.errorText, at: 1)
                }) { (_) in
                    self.ui.errorText.alpha = 1
                }
            }
        }
    }
}
