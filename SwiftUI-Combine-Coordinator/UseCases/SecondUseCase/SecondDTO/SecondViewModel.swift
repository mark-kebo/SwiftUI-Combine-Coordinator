//
//  SecondViewModel.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 17/02/2022.
//

import Foundation

final class SecondViewModel {
    private let coordinator: SecondCoordinatorProtocol?

    init(coordinator: SecondCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    public func buttonPressed() {
        coordinator?.coordinateToDetails()
    }

}
