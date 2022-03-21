//
//  FirstCoordinator.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 17/02/2022.
//

import SwiftUI
import UIKit

protocol FirstCoordinatorProtocol: CoordinatorProtocol {
    func coordinateToDetails()
}

final class FirstCoordinator: Coordinator, FirstCoordinatorProtocol {
    var rootNavigationController: UINavigationController?
    
    var viewController: UIViewController? {
        let childViewController = FirstViewController(nibName: "FirstViewController", bundle: nil)
        childViewController.viewModel = FirstViewModel(coordinator: self)
        return childViewController
    }
    
    init(rootNavigationController: UINavigationController?) {
        self.rootNavigationController = rootNavigationController
    }
    
    func start() {
        guard let controller = viewController else { return }
        rootNavigationController?.pushViewController(controller, animated: true)
    }
    
    func coordinateToDetails() {
        let coordinator = DetailsCoordinator(rootNavigationController: rootNavigationController)
        coordinator.start()
    }
}
