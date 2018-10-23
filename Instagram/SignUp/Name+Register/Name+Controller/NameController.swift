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
        print("Hello World")
    }
    
    @objc func nextBtn() {
        self.registerData?.addUserDataToRegisteredDataArray(dictionaryName: .name, data: ui.textBoxField.text ?? "")
        let passwordController = PasswordController(title: "Create a Password", subTitle: "", textFieldText: "Password", addPhotoImage: nil)
        passwordController.registerData = self.registerData
        passwordController.passwordView = true
        self.navigationController?.pushViewController(passwordController, animated: true)
    }
}
