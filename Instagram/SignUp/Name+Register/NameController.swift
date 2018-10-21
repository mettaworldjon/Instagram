//
//  PasswordController.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/15/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class NameController: RegisterController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ui.nextBtn.addTarget(self, action: #selector(nextBtn), for: .touchUpInside)
    }
    
    @objc func nextBtn() {
        self.registerData?.addUserDataToRegisteredDataArray(dictionaryName: .name, data: ui.textBoxField.text ?? "")
        let passwordController = RegisterController(title: "Create a Password", subTitle: "", textFieldText: "Password")
        passwordController.passwordView = true
        self.navigationController?.pushViewController(passwordController, animated: true)
    }
}
