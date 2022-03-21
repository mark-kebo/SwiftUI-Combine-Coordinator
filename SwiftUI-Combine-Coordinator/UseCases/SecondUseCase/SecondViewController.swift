//
//  SecondViewController.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 21/03/2022.
//

import UIKit

final class SecondViewController: UIViewController {
    public var viewModel: SecondViewModel?

    @IBAction func buttonAction(_ sender: Any) {
        viewModel?.buttonPressed()
    }
}
