//
//  AddArrangedSubviews.swift
//  UIKit-HW8-1
//
//  Created by Дима on 12/10/24.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach(addArrangedSubview)
    }
}
