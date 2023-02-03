//
//  FirstViewModel.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 17/02/2022.
//

import Foundation

final class FirstViewModel {
    private let coordinator: FirstCoordinatorProtocol?
    
    let tableData: [String] = ["firstfirstfirstfirstfirstfirstfirstfir stfirstfirstfirstfirstfirstfir stfirstfirstfirstfirst", "second"]

    init(coordinator: FirstCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    public func buttonPressed() {
        coordinator?.coordinateToDetails()
    }

}
