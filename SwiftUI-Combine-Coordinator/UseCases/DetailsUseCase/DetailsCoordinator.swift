//
//  DetailsCoordinator.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 17/02/2022.
//

import SwiftUI
import UIKit

protocol DetailsCoordinatorProtocol: CoordinatorProtocol {
    func coordinateBack()
}

final class DetailsCoordinator: Coordinator, DetailsCoordinatorProtocol {
    weak var rootNavigationController: UINavigationController?
    
    var viewController: UIViewController? {
        let childViewController = DetailsViewController(nibName: DetailsViewController.nibName,
                                                        bundle: nil)
        childViewController.viewModel = DetailsViewModel(coordinator: self)
        return childViewController
    }
    
    init(rootNavigationController: UINavigationController?) {
        self.rootNavigationController = rootNavigationController
    }
    
    func start() {
        guard let controller = viewController else { return }
        rootNavigationController?.pushViewController(controller, animated: true)
    }
    
    func coordinateBack() {
        guard let window = UIApplication.shared.windows.first else { return }
        let appCoordinator = AppCoordinator(window: window)
        appCoordinator.start()
    }
}
