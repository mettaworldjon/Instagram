//
//  SignUp+Validation.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/11/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

extension PhoneOrEmailController {

    /********************************************/
    /* Validate Number and Email */
    /********************************************/
    @objc func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(textField.text!)
        checkIfTypeingOrCleared(textFromTextField: textField.text!, btn: ui.nextBtn, stack: ui.registerStack, err: ui.errorText)
        if ui.phone {
            var fullString = textField.text ?? ""
            fullString.append(string)
            if range.length == 1 {
                textField.text = format(phoneNumber: fullString, shouldRemoveLastDigit: true)
            } else {
                textField.text = format(phoneNumber: fullString)
            }
        }
        return false
    }
    
    
    
    
}
