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
        
    }

    
}
