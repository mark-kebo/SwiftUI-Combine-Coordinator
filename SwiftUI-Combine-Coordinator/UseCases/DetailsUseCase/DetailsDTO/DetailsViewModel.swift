//
//  DetailsViewModel.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 17/02/2022.
//

import Foundation

final class DetailsViewModel {
    public var coordinator: DetailsCoordinatorProtocol?

    init(coordinator: DetailsCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    public func buttonPressed() {
        coordinator?.coordinateBack()
    }

}
