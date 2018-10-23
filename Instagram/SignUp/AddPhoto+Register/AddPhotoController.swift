//
//  AddPhotoController.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/21/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit
import Firebase

class AddPhotoController: RegisterController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ui.nextBtn.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        ui.addImageBtn.addTarget(self, action: #selector(addImageHandler), for: .touchUpInside)
    }
    
    
    @objc func handleSignUp() {
        
    }
    
}


extension AddPhotoController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @objc func addImageHandler() {
        let imagePickerController = UIImagePickerController()
        present(imagePickerController, animated: true, completion: nil)
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let editedImage = info[.editedImage] as? UIImage {
            ui.addImageBtn.setImage(editedImage.withRenderingMode(.alwaysOriginal), for: .normal)
        } else if let originalImage = info[.originalImage] as? UIImage {
            ui.addImageBtn.setImage(originalImage.withRenderingMode(.alwaysOriginal), for: .normal)
        }
        
        ui.addImageBtn.layer.cornerRadius = ui.addImageBtn.frame.width / 2
        ui.addImageBtn.layer.masksToBounds = true
        
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
