//
//  DetailsViewController.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 21/03/2022.
//

import UIKit

class DetailsViewController: UIViewController {
    public var viewModel: DetailsViewModel?

    @IBAction func buttonAction(_ sender: Any) {
        viewModel?.buttonPressed()
    }
}
