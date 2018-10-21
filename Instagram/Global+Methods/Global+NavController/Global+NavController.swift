//
//  Global+NavController.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/15/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class CustomNavController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true
    }
}
