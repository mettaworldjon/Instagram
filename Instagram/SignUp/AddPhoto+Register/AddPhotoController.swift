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
        
        guard let email = self.registerData?.getEmail() else { return }
        guard let username = self.registerData?.getName() else { return }
        guard let password = self.registerData?.getPassword() else { return }
        
        // Create User
        Auth.auth().createUser(withEmail: email, password: password) { (user, err:Error?) in
            // Check for Error
            if let error = err {
                print("Failed to create user:", error)
                return // Kill
            }
            print("Successfully created user!")
            
            // Prepare Image
            guard let image = self.ui.addImageBtn.imageView?.image else { return }
            guard let uploadData = image.jpegData(compressionQuality: 0.3) else { return }
            let filename = NSUUID().uuidString
            
            // Upload Image
            let storageRef = Storage.storage().reference().child("profile_images").child(filename)
            storageRef.putData(uploadData, metadata: nil, completion: { (metadata, err) in
                
                // Check for Error
                if let error = err {
                    print("Failed to upload profile image:",error)
                    return
                }
                
                // Get Image URL
                storageRef.downloadURL(completion: { (downloadURL, err) in
                    
                    // Check for Error
                    if let error = err {
                        print("Failed to get URL for image:", error)
                        return
                    }
                    
                    // Obtained URL
                    guard let profileImageUrl = downloadURL?.absoluteString else { return }
                    print("Successfully uploaded profile image: ", profileImageUrl)
                    
                })
                
            })
            
            
            
            
        }
        
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
