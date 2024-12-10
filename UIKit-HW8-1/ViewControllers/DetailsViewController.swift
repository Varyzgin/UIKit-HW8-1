//
//  DetailsViewController.swift
//  UIKit-HW8-1
//
//  Created by Дима on 12/10/24.
//

import UIKit

class DetailsViewController : UIViewController {
    func setupPage(content : Content) {
        imageView.image = UIImage(named: content.picture)
        priceLabel.text = "\(content.price)"
        headerLabel.text = content.headerText
        descriptionLabel.text = content.descriptionText
        
        setupConstraints()
    }

    lazy var mainView = {
        $0.addSubviews(imageView, priceLabel, headerLabel, stackView, descriptionLabel)
        return $0
    }(UIView())
    lazy var imageView = {
        $0.layer.cornerRadius = 15
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var priceLabel = UILabel().setupLabel(textStyle: .megaHeader, textColor: ColorScheme.red.value())
    
    lazy var headerLabel = UILabel().setupLabel(textStyle: .header)
    
    lazy var likeButton = {
        $0.titleLabel?.textColor = .black
        $0.setTitle("В избранное", for: .normal)
        $0.backgroundColor = ColorScheme.red.value()
        $0.layer.cornerRadius = 15
        return $0
    }(UIButton())
    
    lazy var buyButton = {
        $0.setTitle("Купить", for: .normal)
        $0.backgroundColor = ColorScheme.green.value()
        $0.titleLabel?.textColor = ColorScheme.white.value()
        $0.layer.cornerRadius = 15
        return $0
    }(UIButton())
    
    lazy var stackView = {
        $0.distribution = .fillEqually
        $0.spacing = Margins.medium.value()
        $0.axis = .horizontal
        $0.addArrangedSubviews(likeButton, buyButton)
        return $0
    }(UIStackView())
    
    lazy var descriptionLabel = UILabel().setupLabel(textStyle: .description, textColor: ColorScheme.gray.value(), numberOfLines: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.activateConstraints(scrollView, mainView, imageView, priceLabel, headerLabel, stackView, descriptionLabel)

        view.backgroundColor = ColorScheme.background.value()
        view.addSubview(scrollView)
    }
    
    lazy var scrollView = {
        $0.addSubview(mainView)
        return $0
    }(UIScrollView())
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            mainView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            mainView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            mainView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            imageView.topAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor, constant: Margins.large.value()),
            imageView.leadingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.leadingAnchor),
            imageView.widthAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.widthAnchor),
            imageView.heightAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.widthAnchor),
            
            priceLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: Margins.large.value()),
            priceLabel.leadingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.leadingAnchor, constant: Margins.large.value()),
            priceLabel.trailingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.trailingAnchor, constant: -Margins.large.value()),

            
            headerLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: Margins.medium.value()),
            headerLabel.leadingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.leadingAnchor, constant: Margins.large.value()),
            headerLabel.trailingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.trailingAnchor, constant: -Margins.large.value()),
            
            stackView.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: Margins.medium.value()),
            stackView.leadingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.leadingAnchor, constant: Margins.large.value()),
            stackView.trailingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.trailingAnchor, constant: -Margins.large.value()),
            stackView.heightAnchor.constraint(equalToConstant: 40),
            
            descriptionLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: Margins.medium.value()),
            descriptionLabel.leadingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.leadingAnchor, constant: Margins.large.value()),
            descriptionLabel.trailingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.trailingAnchor, constant: -Margins.large.value()),
            descriptionLabel.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -Margins.large.value())
        ])
    }
}
