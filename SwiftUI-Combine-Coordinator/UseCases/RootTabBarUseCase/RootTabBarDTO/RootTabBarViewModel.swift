//
//  RootTabBarViewModel.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 16/02/2022.
//

import Foundation

final class RootTabBarViewModel {
    public var coordinator: RootTabBarCoordinatorProtocol?

    init(coordinator: RootTabBarCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    public func buttonPressed() {
        coordinator?.coordinateToDetails()
    }

}
