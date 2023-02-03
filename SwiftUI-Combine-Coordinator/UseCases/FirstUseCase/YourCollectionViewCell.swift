//
//  YourCollectionViewCell.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 06/06/2022.
//

import UIKit
import ListFlowLayout

class YourCollectionViewCell: ListCollectionViewCell {
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.highlitedStyle = .background(UIColor.lightGray)
        self.highlightedBackgroundColor = UIColor.red
    }

}
