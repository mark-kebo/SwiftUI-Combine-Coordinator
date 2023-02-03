//
//  FirstViewController.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 21/03/2022.
//

import UIKit
import CellCustomRegistration
import ListFlowLayout
import FlexiTooltipView

final class FirstViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var collectionView: EmptybleCollectionView!
    public var viewModel: FirstViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button1.layer.cornerRadius = 8
        button1.clipsToBounds = true
        let customFlowLayout = ListFlowLayout(cellSideInset: 8)
        customFlowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        collectionView.collectionViewLayout = customFlowLayout
        collectionView.contentInsetAdjustmentBehavior = .always
        collectionView.registerCustomNibForCell(YourCollectionViewCell.self)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        let tooltipItems: [FlexiTooltipItemProtocol] = [
                            FlexiTooltipTextItem(text: attributtedTitle(text: "Lorem ipsum", weight: .bold), image: nil),
                            FlexiTooltipTextItem(text: attributtedTitle(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", weight: .light), image: nil),
                            FlexiTooltipTextItem(text: attributtedTitle(text: "Lorem ipsum", weight: .bold), image: nil),
            FlexiTooltipTextItem(text: attributtedTitle(text: "Lorem ipsum dolor nil Unbalanced calls to begin/end appearance transitions for <UINavigationController: 0x7f7d2601ce00>", weight: .regular), image: nil),
            FlexiTooltipTextItem(text: attributtedTitle(text: "Lorem dolor nil", weight: .regular), image: nil)
        ]
        let tooltipItems2: [FlexiTooltipItemProtocol] = [
                            FlexiTooltipTextItem(text: attributtedTitle(text: "Lorem ipsum", weight: .bold), image: nil),
                            FlexiTooltipTextItem(text: attributtedTitle(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", weight: .light), image: nil),
                            FlexiTooltipTextItem(text: attributtedTitle(text: "Lorem ipsum", weight: .bold), image: nil),
            FlexiTooltipTextItem(text: attributtedTitle(text: "Lorem ipsum dolor nil Unbalanced calls to begin/end appearance transitions for <UINavigationController: 0x7f7d2601ce00>", weight: .regular), image: nil),
            FlexiTooltipTextItem(text: attributtedTitle(text: "Lorem dolor nil nil Unbalanced calls to begin/end appearance transitions", weight: .regular), image: nil)
        ]
        var config = FlexiTooltipConfiguration()
        config.arrowHeight = 12
        config.cornerRadius = 8
        config.isNeedShadow = true
        config.isBackgroundTapClosable = false
        config.isBackgroundTapClosable = true
        config.isTooltipClosable = true
        config.backgroundColor = UIColor.systemBackground
        config.topAction = FlexiTooltipActionItem(title: attributtedTitle(text: "Some top action", weight: .regular),
                                                  backgroundColor: .orange) { [weak self] in
            print("topAction")
            self?.navigationController?.topViewController?.dismiss(animated: true, completion: nil)
        }
        config.highlightedViews = [button1, button]
        let controller = FlexiTooltipViewController(params: FlexiTooltipParams(tooltipItems: tooltipItems,
                                                                                         pointingView: button,
                                                                                         configuration: config))
        controller.present(in: navigationController)
        viewModel?.buttonPressed()
    }
    
    func attributtedTitle(text: String, weight: UIFont.Weight) -> NSAttributedString {
        let attributesForText: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.foregroundColor : UIColor.label,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: weight)]
        
        return NSAttributedString(string: text, attributes: attributesForText)
    }
}

extension FirstViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel?.tableData.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let defaultCell = self.collectionView.emptyCell(for: indexPath)
        guard let item = viewModel?.tableData[indexPath.row] else { return defaultCell }
        let cell = collectionView.dequeueCustomReusableCell(for: indexPath, YourCollectionViewCell.self)
        cell.label.text = item
        return cell
    }
    
    // Extension methods...
}
