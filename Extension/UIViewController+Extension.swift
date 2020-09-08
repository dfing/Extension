//
//  UIViewController+Extension.swift
//  Extension
//
//  Created by kaylla on 2020/9/8.
//  Copyright © 2020 kaylla. All rights reserved.
//

import UIKit

extension UIViewController {
    func addViewController(_ vc: UIViewController) {
        self.view.addSubview(vc.view)
        self.addChild(vc)
        vc.didMove(toParent: self)
    }

    func moveViewController(_ vc: UIViewController) {
        vc.willMove(toParent: nil)
        vc.removeFromParent()
        vc.view.removeFromSuperview()
    }
    
    func leave(completion: (() -> Void)?) {
        if navigationController == nil {
            dismiss(animated: true, completion: completion)
        } else {
            if navigationController?.presentingViewController == nil {
                dismiss(animated: true, completion: completion)
            } else {
                navigationController?.popViewController(animated: true)
                completion?()
            }
        }
    }
}
