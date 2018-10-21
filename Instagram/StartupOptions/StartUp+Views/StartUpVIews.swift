//
//  StartUpUI+UIView.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/10/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class StartUpViews: UIView {
    /********************************************/
    /* Instagram Cursive Image */
    /********************************************/
    let instagramCursive:UIImageView = {
        let image = UIImageView(image: UIImage(named: "IMG_0151"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    /********************************************/
    /* Create Account Button */
    /********************************************/
    let createAccount:UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor(red:0.22, green:0.59, blue:0.94, alpha:1.00)
        btn.layer.cornerRadius = 5
        btn.setTitle("Create New Account", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        return btn
    }()
    
    /********************************************/
    /* Login Button */
    /********************************************/
    let logIn:UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Log In", for: .normal)
        return btn
    }()
    
    // Entry Point
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        constraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func constraints() {
        /********************************************/
        /* Cursive Image Constraint */
        /********************************************/
        self.addSubview(instagramCursive)
        NSLayoutConstraint.activate([
            instagramCursive.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            instagramCursive.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -60),
            instagramCursive.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5)
            ])
        
        /********************************************/
        /* Create Account Constraints */
        /********************************************/
        self.addSubview(createAccount)
        NSLayoutConstraint.activate([
            createAccount.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            createAccount.topAnchor.constraint(equalTo: instagramCursive.bottomAnchor, constant: 1),
            createAccount.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8),
            createAccount.heightAnchor.constraint(equalToConstant: 45)
            ])
        
        /********************************************/
        /* Login Constraints */
        /********************************************/
        self.addSubview(logIn)
        NSLayoutConstraint.activate([
            logIn.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            logIn.topAnchor.constraint(equalTo: createAccount.bottomAnchor, constant: 10),
            logIn.widthAnchor.constraint(equalToConstant: 50),
            logIn.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    
}
