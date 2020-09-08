//
//  String+Extension.swift
//  Extension
//
//  Created by kaylla on 2020/9/8.
//  Copyright © 2020 kaylla. All rights reserved.
//
import Foundation
import UIKit

extension String {
    func localized(_ table: String? = nil) -> String {
        return Bundle.main.localizedString(forKey: self, value: nil, table: table)
    }
}

extension Optional where Wrapped == String {
    var stringValue: String {
        if let _value = self {
            return _value
        } else {
            return ""
        }
    }
    var intValue: Int {
        if let _value = self, let int = Int(_value) {
            return int
        } else {
            return 0
        }
    }
    var floatValue: Float {
        if let _value = self, let float = Float(_value) {
            return float
        } else {
            return 0.0
        }
    }
    var doubleValue: Double {
        if let _value = self, let double = Double(_value) {
            return double
        } else {
            return 0.0
        }
    }
}
