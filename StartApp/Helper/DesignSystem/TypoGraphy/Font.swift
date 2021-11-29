//
//  Font.swift
//  FontsHopeWork
//
//  Created by ziad on 09/10/2021.
//

import Foundation

enum Font: String{
    case regular = "PNU-Regular"
    case bold = "PNU-Bold"
    case medium = "PNU-Medium"
    case light = "Lato-Light"
    case black = "Lato-Black"
    
    var name: String{
        return self.rawValue
    }
}
