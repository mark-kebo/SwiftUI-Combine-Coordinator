//
//  RootTabBarCoordinator.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 16/02/2022.
//

import SwiftUI
import UIKit

final class RootTabBarCoordinator: Coordinator, TabCoordinatorProtocol {
    internal let window: UIWindow
    
    var rootTabBarController: UITabBarController?
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        rootTabBarController = UITabBarController()
        let tabOne = UINavigationController()
        let tabOneBarItem = UITabBarItem(title: "Tab 1",
                                         image: UIImage(systemName: "scribble"),
                                         selectedImage: UIImage(systemName: "scribble.variable"))
        tabOne.tabBarItem = tabOneBarItem
        let tabTwo = UINavigationController()
        let tabTwoBarItem2 = UITabBarItem(title: "Tab 2",
                                          image: UIImage(systemName: "square.and.arrow.up"),
                                          selectedImage: UIImage(systemName: "square.and.arrow.up.fill"))
        tabTwo.tabBarItem = tabTwoBarItem2
        rootTabBarController?.viewControllers = [tabOne, tabTwo]
        
        FirstCoordinator(rootNavigationController: tabOne).start()
        SecondCoordinator(rootNavigationController: tabTwo).start()

        window.rootViewController = rootTabBarController
        window.makeKeyAndVisible()
    }
}
