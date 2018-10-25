//
//  UserProfileHeader.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/25/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class UserProfileHeader: UICollectionViewCell {
    
    let profile:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
