//
//  Coordinator.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 16/02/2022.
//

import UIKit
import SwiftUI

protocol CoordinatorProtocol {
    var rootNavigationController: UINavigationController? { get }
    var viewController: UIViewController? { get }
    func start()
}

protocol TabCoordinatorProtocol {
    var window: UIWindow { get }
    var rootTabBarController: UITabBarController? { get }
    func start()
}

class Coordinator {
    deinit {
        NSLog("\(self) deinited")
    }
}
