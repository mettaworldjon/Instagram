//
//  Welcome+Controller.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/21/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class WelcomeController: RegisterController {
    override func viewDidLoad() {
        super.viewDidLoad()
        ui.nextBtn.addTarget(self, action: #selector(nextBtn), for: .touchUpInside)
    }
    
    @objc func nextBtn() {
        let addPhotoController = AddPhotoController(title: "Add Profile Photo", subTitle: "Add a profile so your friends know it's\nyou.", textFieldText: "Add a Photo", addPhotoImage: UIImage(named: "Photo")!)
        addPhotoController.registerData = self.registerData
        self.navigationController?.pushViewController(addPhotoController, animated: true)
    }
}
