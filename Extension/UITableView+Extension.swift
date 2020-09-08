//
//  UITableView+Extension.swift
//  Extension
//
//  Created by kaylla on 2020/9/8.
//  Copyright © 2020 kaylla. All rights reserved.
//

import UIKit

extension UITableView {
    var totalRowCount: Int {
        var count: Int = 0
        let sections = self.numberOfSections
        for section in 0 ..< sections {
            let rowInSection = self.numberOfRows(inSection: section)
            count += rowInSection
        }
        return count
    }
    func selectAll() {
        let sections = self.numberOfSections
        for section in 0 ..< sections {
            let rowInSection = self.numberOfRows(inSection: section)
            for row in 0 ..< rowInSection {
                let indexPath = IndexPath(row: row, section: section)
                selectRow(at: indexPath, animated: false, scrollPosition: .none)
            }
        }
    }
    func deselectAll() {
        let sections = self.numberOfSections
        for section in 0 ..< sections {
            let rowInSection = self.numberOfRows(inSection: section)
            for row in 0 ..< rowInSection {
                let indexPath = IndexPath(row: row, section: section)
                deselectRow(at: indexPath, animated: true)
            }
        }
    }
}
