//
//  StringExt.swift
//  HomeX
//
//  Created by mike on 2025/1/10.
//

import UIKit

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func localizedWithComment(_ comment: String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
