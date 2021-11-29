//
//  SceneDelegate+FUN.swift
//  StartApp
//
//  Created by ziad on 10/10/2021.
//

import Foundation
import UIKit
extension SceneDelegate{
    func createFirstNavController() -> UINavigationController {
        // left to right
        let firstVC = IntroVC()
        firstVC.title = "Intro".localized
        //firstVC.tabBarItem = UITabBarItem(title: String?, image: UIImage?, selectedImage: UIImage?)
        firstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        return UINavigationController(rootViewController: firstVC)
    }
    
    func createSecondNavController() -> UINavigationController {
        let secondVC = HomeVC()
        secondVC.title = "Home".localized
        //firstVC.tabBarItem = UITabBarItem(title: String?, image: UIImage?, selectedImage: UIImage?)
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        return UINavigationController(rootViewController: secondVC)
    }
    
    func createTabbar() -> UITabBarController{
        let tabBarManager = UITabBarController()
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.gray]
        UINavigationBar.appearance().tintColor = .black
        // this for deleting all backButton text in navigation Controller
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear], for: .normal)
        UITabBar.appearance().backgroundColor = .white.withAlphaComponent(0.8)
        UITabBar.appearance().barTintColor = .gray
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().tintColor = .systemGreen
        tabBarManager.viewControllers = [createFirstNavController(), createSecondNavController()]
        return tabBarManager
    }
}
