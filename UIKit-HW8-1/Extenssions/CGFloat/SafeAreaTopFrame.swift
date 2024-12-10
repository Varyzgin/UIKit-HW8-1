//
//  SafeAreaTopFrame.swift
//  UIKit-HW8-1
//
//  Created by Дима on 12/10/24.
//

import UIKit

extension CGFloat {
    func safeAreaTopFrame() -> CGFloat {
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        return scene?.windows.first?.safeAreaInsets.top ?? 0
    }
}
