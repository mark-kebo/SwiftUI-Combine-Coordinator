//
//  SecondCoordinator.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 17/02/2022.
//

import SwiftUI
import UIKit

protocol SecondCoordinatorProtocol: CoordinatorProtocol {
    func coordinateToDetails()
}

final class SecondCoordinator: Coordinator, SecondCoordinatorProtocol {
    weak var rootNavigationController: UINavigationController?
    
    var viewController: UIViewController? {
        let childViewController = SecondViewController(nibName: SecondViewController.nibName,
                                                       bundle: nil)
        childViewController.viewModel = SecondViewModel(coordinator: self)
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
