//
//  PhoneOrdEmailController.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/9/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class PhoneOrEmailController: UIViewController {
    let registerData = UserRegisterData()
    let ui = PhoneOrEmailViews()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = ui
        setUpButtonHandlers()
    }
    
}
