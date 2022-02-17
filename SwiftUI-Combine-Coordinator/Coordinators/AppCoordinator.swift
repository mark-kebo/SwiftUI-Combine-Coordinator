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
    
    var rootNavigationController: UINavigationController?
    var view: AnyView?

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        rootNavigationController = UINavigationController()
        window.rootViewController = rootNavigationController
        window.makeKeyAndVisible()
        showTabBar()
    }

    private func showTabBar() {
        let childCoordinator = RootTabBarCoordinator(rootNavigationController: rootNavigationController)
        childCoordinator.start()
    }
}
