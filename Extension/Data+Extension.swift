//
//  Data+Extension.swift
//  Extension
//
//  Created by kaylla on 2020/9/8.
//  Copyright © 2020 kaylla. All rights reserved.
//

import UIKit

extension Data {
    func toDictionary() -> [String: Any]? {
        do {
            let json = try JSONSerialization.jsonObject(with: self, options: .mutableContainers)
            guard let dic = json as? [String: Any] else { return nil }
            return dic
        } catch {
            return nil
        }
    }
    
}
