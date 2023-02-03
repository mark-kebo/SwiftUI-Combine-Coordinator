//
//  AppCoordinator.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 16/02/2022.
//

import UIKit
import SwiftUI

final class AppCoordinator: Coordinator, CoordinatorProtocol {
    private let window: UIWindow
    
    var rootNavigationController: UINavigationController? = UINavigationController()
    var viewController: UIViewController?

    init(window: UIWindow) {
        self.window = window
    }
    
    func initialize() {
        window.rootViewController = rootNavigationController
        window.makeKeyAndVisible()
    }

    func start() {
        if Bool.random() {
            showTabBar()
        } else {
            let details = DetailsCoordinator(rootNavigationController: rootNavigationController)
            details.start()
        }
    }

    private func showTabBar() {
        let childCoordinator = RootTabBarCoordinator(window: window)
        childCoordinator.start()
    }
}
