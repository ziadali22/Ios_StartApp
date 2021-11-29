//
//  Colors.swift
//  FontsHopeWork
//
//  Created by ziad on 09/10/2021.
//

import Foundation
import UIKit

extension DesignSystem{
    enum Colors: String{
        case primaryColor = "primary"
        case secondaryColor = "secondary"
        var color: UIColor{
            switch self {
            case .primaryColor:
                return UIColor(named: self.rawValue)!
            case .secondaryColor:
                return UIColor(named: self.rawValue)!
            }
        }
    }
}
