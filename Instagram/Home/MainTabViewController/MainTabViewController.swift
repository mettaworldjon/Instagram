//
//  MainTabViewController.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .black
        guard let selected = UIImage(named: "profile_selected") else { return }
        guard let unselected = UIImage(named: "profile_unselected") else { return }
        let layout = UICollectionViewFlowLayout()
        let profileViewController = createNavController(vc: ProfilePageViewController(collectionViewLayout: layout), selected: selected, unselected: unselected)
        
        viewControllers = [profileViewController]
        
    }
    
    func createNavController(vc:UIViewController, selected:UIImage, unselected:UIImage) -> UINavigationController {
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselected
        navController.tabBarItem.selectedImage = selected
        return navController
    }
    
}
