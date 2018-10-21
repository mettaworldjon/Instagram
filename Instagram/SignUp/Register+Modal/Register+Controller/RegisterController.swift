//
//  RegisterController+.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/15/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {
    var registerData:UserRegisterData?
    let ui = RegisterViews()
    var passwordView:Bool = false
    
    
    
    convenience init(title:String, subTitle:String, textFieldText:String) {
        self.init()
        if subTitle == "" {
            ui.mainStack.removeArrangedSubview(ui.subTitleLabel)
            ui.subTitleLabel.alpha = 0
            ui.titleLabel.text = title
            ui.textBoxField.placeholder = textFieldText
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ui
        setUpButtonHandlers()
    }
}
