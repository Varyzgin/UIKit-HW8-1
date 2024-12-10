//
//  CellView.swift
//  UIKit-HW8-1
//
//  Created by Дима on 12/10/24.
//

import UIKit

class CellView: UICollectionViewCell {
    static let identifier = "CellView"
    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.addSubview(cardView)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    lazy var cardView = {
        $0.backgroundColor = ColorScheme.white.value()
        $0.layer.cornerRadius = 15
        return $0
    }(UIView(frame: CGRect(origin: .zero, size: frame.size)))
    
    lazy var imageView = {
        $0.layer.cornerRadius = 15
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: frame.width, height: frame.width))))
    
    lazy var priceLabel = UILabel().setupLabel(textStyle: .boldDescription, textColor: ColorScheme.red.value())
    
    lazy var iconImageView = {
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 20, height: 20))))
    
    lazy var stackView = {
        $0.distribution = .equalSpacing
        $0.axis = .horizontal
        $0.addArrangedSubviews(priceLabel, iconImageView)
        return $0
    }(UIStackView(frame: CGRect(x: Margins.medium.value(), y: imageView.frame.maxY + Margins.medium.value(), width: frame.width - 2 * Margins.medium.value(), height: 20)))
    
    lazy var headerText = {
        $0.numberOfLines = 2
        $0.textAlignment = .left
        
        $0.font = TextStyle.subDescription.value()
        return $0
    }(UILabel(frame: CGRect(x: Margins.medium.value(), y: stackView.frame.maxY + Margins.medium.value(), width: frame.width - 2 * Margins.medium.value(), height: 41)))
//    = UILabel(frame: CGRect(x: Margins.medium.value(), y: stackView.frame.maxY + Margins.medium.value(), width: frame.width - 2 * Margins.medium.value(), height: 30))
//        .setupLabel(textStyle: .subDescription, textColor: ColorScheme.black.value(), numberOfLines: 2)
    lazy var buyButton = {
        $0.setTitle("Купить", for: .normal)
        $0.backgroundColor = ColorScheme.green.value()
        $0.titleLabel?.textColor = ColorScheme.white.value()
        $0.layer.cornerRadius = 15
        return $0
    }(UIButton(frame: CGRect(x: Margins.small.value(), y: cardView.frame.maxY - Margins.medium.value() - 30, width: frame.width - 2 * Margins.small.value(), height: 30)))
    
    
    func setupCell(content: Content) {
        imageView.image = UIImage(named: content.picture)
        priceLabel.text = "\(content.price)"
        iconImageView.image = UIImage(named: "icon3")?.resize(width: 20, height: 20)
        headerText.text = content.headerText

        cardView.addSubviews(imageView, stackView, headerText, buyButton)
    }
}
