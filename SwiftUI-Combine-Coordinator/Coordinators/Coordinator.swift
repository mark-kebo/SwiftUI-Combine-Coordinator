//
//  Coordinator.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 16/02/2022.
//

import UIKit

protocol CoordinatorProtocol {
    var router: UINavigationController? { get }
    func start()
}
