//
//  NameHandlers.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/15/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

extension RegisterController {
    func setUpButtonHandlers() {
        ui.textBoxField.addTarget(self, action: #selector(textField), for: UIControl.Event.editingChanged)
    }
    
    @objc func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        checkIfTypeingOrCleared(textFromTextField: textField.text!, btn: ui.nextBtn, stack: ui.mainStack, err: nil, pwd: passwordView, pwdString: string)

        return false
    }
}
