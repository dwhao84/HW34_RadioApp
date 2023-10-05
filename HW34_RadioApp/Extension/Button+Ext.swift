//
//  Button+Extension.swift
//  HW#34_RadioApp
//
//  Created by Dawei Hao on 2023/9/23.
//

import UIKit


// MARK: - Setup UIButton configure
extension UIButton {
    // Setup when Btn tapped become smaller
    func setupBtnWhenTappedBecomeSmaller () {
        self.transform = CGAffineTransform.identity.scaledBy(x: 1.3  , y: 1.3)
    }

    func setupBtnWhenTappedBecomeNormal () {
        self.transform = CGAffineTransform.identity.scaledBy(x: 1, y: 1)
    }
}
