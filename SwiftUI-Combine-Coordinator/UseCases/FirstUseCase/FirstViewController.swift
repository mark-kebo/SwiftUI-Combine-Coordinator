//
//  FirstViewController.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 21/03/2022.
//

import UIKit

final class FirstViewController: UIViewController {
    public var viewModel: FirstViewModel?

    @IBAction func buttonAction(_ sender: Any) {
        viewModel?.buttonPressed()
    }
}
