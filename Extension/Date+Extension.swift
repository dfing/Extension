//
//  Date+Extension.swift
//  Extension
//
//  Created by kaylla on 2020/9/8.
//  Copyright © 2020 kaylla. All rights reserved.
//

import UIKit

extension Date {
    func dateString(to format: String = "yyyy-MM-dd hh:mm:ss") -> String {
        let df = DateFormatter()
        df.dateFormat = format
        return df.string(from: self)
    }
}

