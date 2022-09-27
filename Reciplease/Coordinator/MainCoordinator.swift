//
//  MainCoordinator.swift
//  Reciplease
//
//  Created by DAUBERCIES on 07/08/2022.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func startCoordinator() {
        let initialViewController = SearchViewController.instantiate()
        initialViewController.coordinator = self
        initialViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        navigationController.pushViewController(initialViewController, animated: false)
    }
    
    func LaunchSearch() {
        let vc = TableViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func seeDetails(index: Int) {
        let vc = DetailViewController.instantiate()
        vc.coordinator = self
        vc.recipeIndexPath = index
        navigationController.pushViewController(vc, animated: true)
    }
}
