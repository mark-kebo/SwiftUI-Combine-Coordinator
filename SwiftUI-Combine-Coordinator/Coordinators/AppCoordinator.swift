//
//  AppCoordinator.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 16/02/2022.
//

import UIKit
import SwiftUI

class AppCoordinator: CoordinatorProtocol {
    private let window: UIWindow
    
    internal var router: UINavigationController?

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        self.showTabBar()
    }

    private func showTabBar() {
        // Use a UIHostingController as window root view controller
        let controller = UIHostingController(rootView: RootTabBarView())
        router = UINavigationController(rootViewController: controller)
        window.rootViewController = router
    }
}
