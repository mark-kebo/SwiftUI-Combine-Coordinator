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
    var rootNavigationController: UINavigationController?
    
    var view: AnyView? {
        var detailsView = DetailsView()
        detailsView.viewModel = DetailsViewModel(coordinator: self)
        return AnyView(detailsView)
    }
    
    init(rootNavigationController: UINavigationController?) {
        self.rootNavigationController = rootNavigationController
    }
    
    func start() {
        let controller = UIHostingController(rootView: view)
        rootNavigationController?.pushViewController(controller, animated: true)
    }
    
    func coordinateBack() {
        rootNavigationController?.popViewController(animated: true)
    }
}
