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
    
    var rootNavigationController: UINavigationController?
    
    var view: AnyView? {
        var childView = SecondView()
        childView.viewModel = SecondViewModel(coordinator: self)
        return AnyView(childView)
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
