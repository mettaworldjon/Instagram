//
//  PasswordController.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/15/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class PasswordController: RegisterController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ui.nextBtn.addTarget(self, action: #selector(nextBtn), for: .touchUpInside)
        passwordView = true
    }
    
    @objc func nextBtn() {
        guard let safeName = self.registerData?.getName() else { return }
        guard let safePassword = ui.textBoxField.text else { return }
        self.registerData?.addUserDataToRegisteredDataArray(dictionaryName: .password, data: safePassword)
        let welcomeScreen = WelcomeController(title: "Welcome to Instagram,\n\(safeName)", subTitle: "Find people to follow and start sharing photos.\n You can change your username anytime", textFieldText: "", addPhotoImage: nil)
        welcomeScreen.registerData = self.registerData
        self.navigationController?.pushViewController(welcomeScreen, animated: true)
    }
    
}
