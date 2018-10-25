//
//  ProfilePageViewController.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit
import Firebase

class ProfilePageViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .darkGray
        navigationItem.title = ""
        fetchData()
    }
    
    fileprivate func fetchData() {
        guard let uid = Auth.auth().currentUser?.uid else { return  }
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (DataSnapshot) in
            print(DataSnapshot.value ?? "")
            
            guard let dictionary = DataSnapshot.value as? [String:Any] else { return }
            
            let username = dictionary["username"] as? String
            
            self.navigationItem.title = username
            
        }) { (err) in
            print("Failed to fetch user:", err)
        }
    }
    
}
