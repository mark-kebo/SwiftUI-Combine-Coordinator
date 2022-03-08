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
    
    var view: AnyView? {
        var childView = FirstView()
        childView.viewModel = FirstViewModel(coordinator: self)
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
