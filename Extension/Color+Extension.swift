//
//  Color+Extension.swift
//  Extension
//
//  Created by kaylla on 2020/9/8.
//  Copyright © 2020 kaylla. All rights reserved.
//
import Foundation
import UIKit

extension UIColor {
    static func hex(_ str: String) -> UIColor {
        var cString: String = str.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }
        if cString.count != 6 {
            return .white
        }
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    static func hex(_ str: String, _ alpha: CGFloat) -> UIColor {
        var cString: String = str.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }
        if cString.count != 6 {
            return .white
        }
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }

    static func colorWithRGB(_ red: Int, _ green: Int, _ blue: Int) -> UIColor {
        let redValue = CGFloat(Float(red) / 255.0)
        let greenValue = CGFloat(Float(green) / 255.0)
        let blueValue = CGFloat(Float(blue) / 255.0)
        let color = UIColor.init(red: redValue,
                                 green: greenValue,
                                 blue: blueValue,
                                 alpha: 1.0)
        return color
    }

    static func colorWithRGBA(_ red: Int, _ green: Int, _ blue: Int, _ alpha: CGFloat) -> UIColor {
        let redValue = CGFloat(Float(red) / 255.0)
        let greenValue = CGFloat(Float(green) / 255.0)
        let blueValue = CGFloat(Float(blue) / 255.0)
        let color = UIColor.init(red: redValue,
                                 green: greenValue,
                                 blue: blueValue,
                                 alpha: alpha)
        return color
    }

    static func dynamicColor(name: String, hex: String) -> UIColor {
        if #available(iOS 11.0, *) {
            return UIColor(named: name) ?? .hex(hex)
        }
        return .hex(hex)
    }
}
