//
//  MainTabBarController.swift
//  Reciplease
//
//  Created by Julie DAUBERCIES on 27/09/2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    let mainCoordinator = MainCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCoordinator.startCoordinator()
        viewControllers = [mainCoordinator.navigationController]
    }
}
