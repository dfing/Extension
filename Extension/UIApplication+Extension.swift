//
//  UIApplication+Extension.swift
//  Extension
//
//  Created by kaylla on 2020/9/8.
//  Copyright © 2020 kaylla. All rights reserved.
//

import UIKit

extension UIApplication {
    class func topViewController(_ base: UIViewController? = nil) -> UIViewController? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
            let sceneDelegate = windowScene.delegate as? SceneDelegate? else { return nil }
        
        var _base = base
        if _base == nil {
            _base = sceneDelegate?.window?.rootViewController
        }
        
        if let nav = _base as? UINavigationController {
            return topViewController(nav.visibleViewController)
        } else if let tab = _base as? UITabBarController, let selectVC = tab.selectedViewController {
            return topViewController(selectVC)
        } else if let presented = _base?.presentedViewController {
            return topViewController(presented)
        }
        return base
    }
}
