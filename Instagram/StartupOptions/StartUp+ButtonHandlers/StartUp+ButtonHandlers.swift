//
//  StartUpUI+ButtonHandlers.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/10/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

extension StartUpController {
    /********************************************/
    /* Set Handlers */
    /********************************************/
    func setButtonHandlers() {
        ui.createAccount.addTarget(self, action: #selector(signUp), for: .touchUpInside)
    }
    
    /********************************************/
    /* SignUp Page */
    /********************************************/
    @objc func signUp() {
        let signUpController = PhoneOrEmailController()
        let customNav = CustomNavController(rootViewController: signUpController)
        present(customNav, animated: true) {
        }
    }
}
