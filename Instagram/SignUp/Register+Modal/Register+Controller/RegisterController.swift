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
    
    convenience init(title:String, subTitle:String, textFieldText:String, addPhotoImage:UIImage?) {
        self.init()
        if subTitle == "" {
            ui.mainStack.removeArrangedSubview(ui.subTitleLabel)
            ui.subTitleLabel.alpha = 0
            ui.titleLabel.text = title
            ui.textBoxField.placeholder = textFieldText
        }
        if textFieldText == "" {
            ui.mainStack.removeArrangedSubview(ui.textBox)
            ui.titleLabel.text = title
            ui.subTitleLabel.text = subTitle
            ui.nextBtn.activeBtn(btn: ui.nextBtn)
            ui.nextBtn.isUserInteractionEnabled = true
            ui.textBoxField.resignFirstResponder()
            ui.textBox.alpha = 0
            ui.mainStack.spacing = 20
        }
        if let safeImage = addPhotoImage {
            ui.mainStack.removeArrangedSubview(ui.textBox)
            ui.textBox.alpha = 0
            ui.addImageBtn.setImage(safeImage, for: .normal)
            ui.titleLabel.text = title
            ui.subTitleLabel.text = subTitle
            ui.nextBtn.setTitle("Add a Photo", for: .normal)
            ui.nextBtn.activeBtn(btn: ui.nextBtn)
            ui.textBoxField.resignFirstResponder()
            ui.mainStack.spacing = 20
            ui.topToView?.isActive = false
            ui.addSubview(ui.addImageBtn)
            ui.imageTop?.isActive = true
            ui.imageCenterX?.isActive = true
            ui.topToPhoto?.isActive = true
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ui
        setUpButtonHandlers()
    }
}
