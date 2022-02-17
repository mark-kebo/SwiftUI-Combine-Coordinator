//
//  RootTabBarCoordinator.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 16/02/2022.
//

import SwiftUI
import UIKit

protocol RootTabBarCoordinatorProtocol: CoordinatorProtocol {
    func coordinateToDetails()
}

final class RootTabBarCoordinator: Coordinator, RootTabBarCoordinatorProtocol {
    var rootNavigationController: UINavigationController?
    
    var view: AnyView? {
        var rootTabBarView = RootTabBarView()
        rootTabBarView.viewModel = RootTabBarViewModel(coordinator: self)
        return AnyView(rootTabBarView)
    }
    
    init(rootNavigationController: UINavigationController?) {
        self.rootNavigationController = rootNavigationController
    }
    
    func start() {
        let controller = UIHostingController(rootView: view)
        rootNavigationController?.pushViewController(controller, animated: true)
    }
    
    func coordinateToDetails() {
        let coordinator = DetailsCoordinator(rootNavigationController: rootNavigationController)
        coordinator.start()
    }
}
