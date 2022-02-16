//
//  AppCoordinator.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 16/02/2022.
//

import UIKit
import SwiftUI

final class AppCoordinator: CoordinatorProtocol {
    private let window: UIWindow
    
    internal var rootNavigationController: UINavigationController?

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        self.showTabBar()
    }
    
    deinit {
        NSLog("\(self) deinited")
    }

    private func showTabBar() {
        // Use a UIHostingController as window root view controller
        let controller = UIHostingController(rootView: RootTabBarView())
        rootNavigationController = UINavigationController(rootViewController: controller)
        window.rootViewController = rootNavigationController
    }
}
