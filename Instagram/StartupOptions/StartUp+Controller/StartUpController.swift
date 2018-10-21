//
//  ViewController.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/8/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class StartUpController: UIViewController {
    /********************************************/
    /* Load UI */
    /********************************************/
    var ui = StartUpViews()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set UI
        view = ui
        // Set Button Handlers
        setButtonHandlers()
    }
}

