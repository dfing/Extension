//
//  UIView+Extension.swift
//  Extension
//
//  Created by kaylla on 2020/9/8.
//  Copyright © 2020 kaylla. All rights reserved.
//

import UIKit

extension UIView {
    func addEndEditingWhenTouchUpInside() {
        let touch = UITapGestureRecognizer(target: self, action: #selector(runEndEditing))
        self.addGestureRecognizer(touch)
    }
    @objc private func runEndEditing() {
        self.endEditing(true)
    }
}
