//
//  ViewController.swift
//  UIKit-HW8-1
//
//  Created by Дима on 12/10/24.
//

import UIKit

class ViewController: UIViewController {
    private let contentArray = Content.data()
    
    lazy var layout = {
        $0.itemSize = CGSize(
            width: 1/2 * (view.frame.width - 3 * Margins.large.value()),
            height: (view.frame.width - 3 * Margins.large.value()))
        $0.minimumLineSpacing = Margins.large.value()
        $0.scrollDirection = .vertical
        $0.minimumInteritemSpacing = 0
        
        return $0
    }(UICollectionViewFlowLayout())
    
    lazy var collectionView = {
        $0.dataSource = self
        $0.register(CellView.self, forCellWithReuseIdentifier: CellView.identifier)
        $0.delegate = self
        
        $0.backgroundColor = ColorScheme.background.value()

        $0.contentInset = UIEdgeInsets(top: CGFloat().safeAreaTopFrame() + Margins.large.value(), left: Margins.large.value(), bottom: Margins.large.value(), right: Margins.large.value())
        
        $0.contentInsetAdjustmentBehavior = .never
        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: layout))
        

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(collectionView)
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        contentArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellView.identifier, for: indexPath) as? CellView
        else { return UICollectionViewCell() }
        cell.setupCell(content: contentArray[indexPath.item])
        return cell
    }
    
}
